# Active Directory Employee Generator Script
# This script creates 1500 random employees in a custom Organizational Unit
# with specified parameters for a lab environment

# Import required modules
Import-Module ActiveDirectory

# Function to generate a random password
function Generate-RandomPassword {
    param(
	[int]$Length = 12
    )
    $CharacterSet = 'abcdefghijklmnopqrstvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()_+-='
    $RandomPassword = -join ($CharacterSet | Get-Random -Count $Length)
    return $RandomPassword
}

# Function to generate a unique username
function Generate-Name {
    param(
	[int]$UserNumber = 1
    )

    $FirstNames = @("James", "John", "Robert", "Micheal", "William", "David", "Joseph", "Thomas", "Charles", "Christopher", "Daniel", "Matthew", "Anthony", "Donald", "Mark", "Paul", "Steven", "Andrew", "Kenneth", "George", "Mary", "Linda", "Patricia", "Jennifer", "Elizabeth", "Susan", "Jessica", "Sarah", "Karen", "Nancy", "Kumbi", "Mei", "Emma", "Seanne", "Lana", "Chipo", "Kingstone", "Miles", "Barbara", "Getty", "Anesu", "Darrell", "Kevin", "Tom", "Tonderayi", "Yuki", "Sharon", "Vimbai", "Kim", "Tucker", "Donald", "Mandisi", "Kojima", "Tomoyo", "Tomoya", "Zoe", "Janet", "Rose", "Jackie", "Marvin", "Karine", "Kerry", "Martha", "Stewart", "Rob", "Pierre", "Baylen", "Abia", "Callen", "dabney", "Chay")
    $LastNames = @("Smith", "Johnson", "Willaims", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson", "Taylor", "Moore", "Jackson", "Martin", "Lee", "Guzha", "Chanetsa", "Mutusva", "Ngazimbi", "Corin", "Mudoti", "Mdumo", "Kayster", "Edlin", "Enes", "Evyn", "Ezana", "Mugabe", "Trump", "Ping", "Dayton", "Nakae", "Hadley", "Gilson", "Garson", "Harris", "Iver", "Iwan", "Haytham", "Magwere", "Hungwe", "Mnangagwa", "Koto", "Taka", "Koji", "Keegan", "Kyrone", "Jovian", "Ludo", "Nehanda", "Tshaka", "Mzilikazi", "Oxford", "Havard", "Greenish", "Washinton")

    $FirstName = $FirstNames | Get-Random
    $LastName = $LastNames | Get-Random

    # Add a unique numeric suffix to ensure uniqueness
    $Username = ($FirstName.Substring(0,1) + $LastName + $UserNumber).ToLower()

    return @{
	FirstName = $FirstName
	LastName = $LastName
	Username = $Username
    }
}

# Departments and Titles
$Departments  = @("IT", "Sales", "Marketing", "Human Resources", "Finance", "Customer Support", "Operations", "Legal", "Research", "Product management")
$Titles  = @("Manager", "Senior Specialist", "Junior Specialist", "Director", "Associate", "Coordinator", "Analyst", "Lead", "Specialist", "Consultant")

# Cities and Countries
$Cities = @("Fukuyama", "Tokyo", "Hokkaido", "Nagoya", "Osaka", "Naha", "Kyoto", "Fukuoka", "Sendai", "Kobe")
$Countries = @("JP") # Using standard two-letter country codes

# Postal Codes
$PostalCodes = ("720-1603", "100-0001", "064-0914", "460-0002", "530-0001", "900-0015", "604-8006", "810-0001", "980-0014", "650-0044")

# Create the Employees OU if it doesn't exist
$OUPath = "OU=Employees,DC=hughdomain,DC=local"
try {
    Get-ADOrganizationalUnit -Identity $OUPath | Out-Null
    Write-Host "Employees OU already exists."
} catch {
    Write-Host "Creating Employees OU..."
    New-ADOrganizationalUnit -Name "Employees" -Path "DC=hughdomain,DC=local" -ProtectedFromAccidentalDeletion $false
}

# Counter for successful creations
$successCount = 0
$errorCount = 0
$requiredUsers = 1500

# Continue creating users until we reach the required number
$userNumber = 1
while ($successCount -lt $requiredUsers) {
    # Generate random name details
    $Name = Generate-Name -UserNumber $userNumber
    $Username = $Name.Username #Store in a local variable for easier reference
    $Department = $Departments | Get-Random
    $Title = $Titles | Get-Random
    $City = $Cities | Get-Random
    $Country = $Countries | Get-Random
    $PostalCode = $PostalCodes | Get-Random
    $Password = Generate-RandomPassword | ConvertTo-SecureString -AsPlainText -Force

    try {
	# Check if username already exists
	if (Get-ADUser -Filter "SamAccountName -eq '$Username'" -ErrorAction SilentlyContinue) {
	    Write-Host "User $Username already exists, trying next username."
	    $userNumber++
	    continue
	}

	# Create User with error handling
	New-ADUser `
	    -SamAccountName $Username `
	    -UserPrincipalName "$Username@hughdomain.local" `
	    -Name "$($Name.FirstName) $($Name.LastName)" `
	    -GivenName $Name.FirstName `
	    -Surname $Name.LastName `
	    -Enabled $true `
	    -ChangePasswordAtLogon $true `
	    -Department $Department `
	    -Title $Title `
	    -City $City `
	    -Country $Country `
	    -PostalCode $PostalCode `
	    -Path $OUPath `
	    -AccountPassword $Password `
	    -Company "MeiVaultSystems" `
	    -ErrorAction Stop

	$successCount++
	$userNumber++

	# Show progress
	if ($successCount % 50 -eq 0) {
	    Write-Host "Created $successCount users so far..."
	}
    } catch {
	$errorCount++
	$errorMessage = $_.Exception.Message
	Write-Host "Error creating user $Username`: $errorMessage"
	$userNumber++

	# If we have too many errors, we might be in a loop
	if ($errorCount -gt 1500) {
	    Write-Host "Too many errors encountered. Please check Active Directory configuration."
	    break
	}
    }
}

Write-Host "$successCount employees have been successfully created in the Employees OU!"
Write-Host "$errorCount errors occurred during user creation."

#Verify users were created
$actualCount = (Get-ADUser -Filter * -SearchBase $OUPath | Measure-Object).Count
Write-Host "Actual number of users in OU: $actualCount"