# Saved as GenerateRandomUsers.ps1
# Enhanced Active Directory Employee Generator Script
# This script creates 1500 random employees organized by department with security groups
# for a Windows Server 2025 lab environment

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

    $FirstNames = @("James", "John", "Robert", "Michael", "William", "David", "Joseph", "Thomas", "Charles", "Christopher", "Daniel", "Matthew", "Anthony", "Donald", "Mark", "Paul", "Steven", "Andrew", "Kenneth", "George", "Mary", "Linda", "Patricia", "Jennifer", "Elizabeth", "Susan", "Jessica", "Sarah", "Karen", "Nancy", "Kumbi", "Mei", "Emma", "Seanne", "Lana", "Chipo", "Kingstone", "Miles", "Barbara", "Getty", "Anesu", "Darrell", "Kevin", "Tom", "Tonderayi", "Yuki", "Sharon", "Vimbai", "Kim", "Tucker", "Donald", "Mandisi", "Kojima", "Tomoyo", "Tomoya", "Zoe", "Janet", "Rose", "Jackie", "Marvin", "Karine", "Kerry", "Martha", "Stewart", "Rob", "Pierre", "Baylen", "Abia", "Callen", "dabney", "Chay")
    $LastNames = @("Smith", "Johnson", "Williams", "Brown", "Jones", "Garcia", "Miller", "Davis", "Rodriguez", "Martinez", "Hernandez", "Lopez", "Gonzalez", "Wilson", "Anderson", "Taylor", "Moore", "Jackson", "Martin", "Lee", "Guzha", "Chanetsa", "Mutusva", "Ngazimbi", "Corin", "Mudoti", "Mdumo", "Kayster", "Edlin", "Enes", "Evyn", "Ezana", "Mugabe", "Trump", "Ping", "Dayton", "Nakae", "Hadley", "Gilson", "Garson", "Harris", "Iver", "Iwan", "Haytham", "Magwere", "Hungwe", "Mnangagwa", "Koto", "Taka", "Koji", "Keegan", "Kyrone", "Jovian", "Ludo", "Nehanda", "Tshaka", "Mzilikazi", "Oxford", "Harvard", "Greenish", "Washington")

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

# Departments and their corresponding titles
$DepartmentalStructure = @{
    "Accounting" = @("Manager", "Senior Accountant", "Junior Accountant", "Bookkeeper", "Financial Analyst", "Accounts Payable Specialist", "Accounts Receivable Specialist")
    "Customer Support" = @("Manager", "Senior Support Specialist", "Support Specialist", "Technical Support Representative", "Customer Success Manager")
    "Finance" = @("Manager", "Senior Financial Analyst", "Financial Analyst", "Budget Analyst", "Treasury Specialist", "Investment Analyst")
    "Human Resources" = @("Manager", "HR Business Partner", "Recruiter", "HR Generalist", "Compensation Analyst", "Training Coordinator")
    "IT" = @("Manager", "Senior System Administrator", "System Administrator", "Network Engineer", "Security Analyst", "Help Desk Technician", "Database Administrator", "Software Developer")
    "Legal" = @("Manager", "Senior Legal Counsel", "Legal Counsel", "Paralegal", "Compliance Officer", "Contract Specialist")
    "Marketing" = @("Manager", "Senior Marketing Specialist", "Marketing Specialist", "Digital Marketing Coordinator", "Content Creator", "Brand Manager")
    "Operations" = @("Manager", "Operations Coordinator", "Process Improvement Specialist", "Quality Assurance Analyst", "Supply Chain Coordinator")
    "Product Management" = @("Manager", "Senior Product Manager", "Product Manager", "Product Owner", "Business Analyst", "Product Marketing Manager")
    "Research" = @("Manager", "Senior Research Scientist", "Research Scientist", "Research Associate", "Data Scientist", "Lab Technician")
    "Sales" = @("Manager", "Senior Sales Representative", "Sales Representative", "Account Manager", "Business Development Representative", "Sales Coordinator")
}

# Cities and Countries
$Cities = @("Fukuyama", "Tokyo", "Hokkaido", "Nagoya", "Osaka", "Naha", "Kyoto", "Fukuoka", "Sendai", "Kobe")
$Countries = @("JP") # Using standard two-letter country codes
$PostalCodes = @("720-1603", "100-0001", "064-0914", "460-0002", "530-0001", "900-0015", "604-8006", "810-0001", "980-0014", "650-0044")

# Define base domain
$BaseDomain = "DC=hughdomain,DC=local"

# Define OUs to create
$MainOUs = @(
    "OU=Employees,$BaseDomain",
    "OU=Groups,$BaseDomain",
    "OU=MeiVaultComputers,$BaseDomain",
    "OU=MeiVaultServers,$BaseDomain",
    "OU=ServiceAccounts,$BaseDomain",
    "OU=AdminAccounts,$BaseDomain"
)

# Define departmental OUs under Employees
$DepartmentalOUs = @()
foreach ($dept in $DepartmentalStructure.Keys) {
    $DepartmentalOUs += "OU=$dept,OU=Employees,$BaseDomain"
}

# Security Groups to create
$SecurityGroups = @(
    "Accounting-Managers",
    "CustomerSupport-Managers", 
    "Finance-Managers",
    "HumanResources-Managers",
    "IT-Managers",
    "Legal-Managers",
    "Marketing-Managers",
    "Operations-Managers",
    "ProductManagement-Managers",
    "Research-Managers",
    "Sales-Managers"
)

# Function to create OU if it doesn't exist
function Create-OUIfNotExists {
    param(
        [string]$OUPath
    )
    
    try {
        Get-ADOrganizationalUnit -Identity $OUPath -ErrorAction Stop | Out-Null
        Write-Host "OU already exists: $OUPath" -ForegroundColor Green
    } catch {
        try {
            $OUName = ($OUPath -split ',')[0] -replace 'OU=', ''
            $ParentPath = ($OUPath -split ',', 2)[1]
            New-ADOrganizationalUnit -Name $OUName -Path $ParentPath -ProtectedFromAccidentalDeletion $false -ErrorAction Stop
            Write-Host "Created OU: $OUPath" -ForegroundColor Yellow
        } catch {
            Write-Host "Error creating OU $OUPath`: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}

# Function to create security group if it doesn't exist
function Create-SecurityGroupIfNotExists {
    param(
        [string]$GroupName,
        [string]$GroupPath
    )
    
    try {
        Get-ADGroup -Identity $GroupName -ErrorAction Stop | Out-Null
        Write-Host "Security group already exists: $GroupName" -ForegroundColor Green
    } catch {
        try {
            New-ADGroup -Name $GroupName -GroupScope Global -GroupCategory Security -Path $GroupPath -ErrorAction Stop
            Write-Host "Created security group: $GroupName" -ForegroundColor Yellow
        } catch {
            Write-Host "Error creating security group $GroupName`: $($_.Exception.Message)" -ForegroundColor Red
        }
    }
}

Write-Host "=== Starting Enhanced Active Directory Setup ===" -ForegroundColor Cyan

# Create main OUs
Write-Host "`nCreating main organizational units..." -ForegroundColor Cyan
foreach ($ouPath in $MainOUs) {
    Create-OUIfNotExists -OUPath $ouPath
}

# Create departmental OUs
Write-Host "`nCreating departmental organizational units..." -ForegroundColor Cyan
foreach ($ouPath in $DepartmentalOUs) {
    Create-OUIfNotExists -OUPath $ouPath
}

# Create security groups
Write-Host "`nCreating security groups..." -ForegroundColor Cyan
$GroupsOUPath = "OU=Groups,$BaseDomain"
foreach ($group in $SecurityGroups) {
    Create-SecurityGroupIfNotExists -GroupName $group -GroupPath $GroupsOUPath
}

# Initialize counters and tracking variables
$successCount = 0
$errorCount = 0
$requiredUsers = 1500
$userNumber = 1
$createdUsers = @{}

# Initialize department counters for even distribution
foreach ($dept in $DepartmentalStructure.Keys) {
    $createdUsers[$dept] = @()
}

Write-Host "`nStarting user creation process..." -ForegroundColor Cyan
Write-Host "Target: $requiredUsers users" -ForegroundColor White

# Continue creating users until we reach the required number
while ($successCount -lt $requiredUsers) {
    # Select department (cycle through departments for even distribution)
    $departments = $DepartmentalStructure.Keys | Sort-Object
    $selectedDepartment = $departments[$successCount % $departments.Count]
    
    # Generate random name details
    $Name = Generate-Name -UserNumber $userNumber
    $Username = $Name.Username
    $Title = $DepartmentalStructure[$selectedDepartment] | Get-Random
    $City = $Cities | Get-Random
    $Country = $Countries | Get-Random
    $PostalCode = $PostalCodes | Get-Random
    $Password = Generate-RandomPassword | ConvertTo-SecureString -AsPlainText -Force
    
    # Determine the OU path for this department
    $DepartmentOUPath = "OU=$selectedDepartment,OU=Employees,$BaseDomain"

    try {
        # Check if username already exists
        if (Get-ADUser -Filter "SamAccountName -eq '$Username'" -ErrorAction SilentlyContinue) {
            Write-Host "User $Username already exists, trying next username." -ForegroundColor Yellow
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
            -Department $selectedDepartment `
            -Title $Title `
            -City $City `
            -Country $Country `
            -PostalCode $PostalCode `
            -Path $DepartmentOUPath `
            -AccountPassword $Password `
            -Company "MeiVaultSystems" `
            -ErrorAction Stop
        
        # Track created user
        $createdUsers[$selectedDepartment] += @{
            Username = $Username
            Title = $Title
            FullName = "$($Name.FirstName) $($Name.LastName)"
        }

        $successCount++
        $userNumber++

        # Show progress
        if ($successCount % 100 -eq 0) {
            Write-Host "Created $successCount users so far..." -ForegroundColor Green
        }
    } catch {
        $errorCount++
        $errorMessage = $_.Exception.Message
        Write-Host "Error creating user $Username`: $errorMessage" -ForegroundColor Red
        $userNumber++

        # If we have too many errors, we might be in a loop
        if ($errorCount -gt 500) {
            Write-Host "Too many errors encountered. Please check Active Directory configuration." -ForegroundColor Red
            break
        }
    }
}

Write-Host "`n=== Adding users to security groups ===" -ForegroundColor Cyan

# Add managers and senior staff to security groups
foreach ($dept in $DepartmentalStructure.Keys) {
    $groupName = switch ($dept) {
        "Product Management" { "ProductManagement-Managers" }
        "Research" { "Research-Managers" }
        "Customer Support" { "CustomerSupport-Managers" }
        "Human Resources" { "HumanResources-Managers" }
        default { "$dept-Managers" }
    }
    
    # Get managers and senior staff from this department
    $managersAndSeniors = $createdUsers[$dept] | Where-Object { 
        $_.Title -like "*Manager*" -or $_.Title -like "*Senior*" -or $_.Title -like "*Director*" 
    }
    
    if ($managersAndSeniors.Count -gt 0) {
        # Add up to 5 managers/seniors to the security group
        $usersToAdd = $managersAndSeniors | Select-Object -First 5
        
        foreach ($user in $usersToAdd) {
            try {
                Add-ADGroupMember -Identity $groupName -Members $user.Username -ErrorAction Stop
                Write-Host "Added $($user.Username) ($($user.Title)) to $groupName" -ForegroundColor Green
            } catch {
                Write-Host "Error adding $($user.Username) to $groupName`: $($_.Exception.Message)" -ForegroundColor Red
            }
        }
    } else {
        # If no managers/seniors, add first 2 users from department
        $usersToAdd = $createdUsers[$dept] | Select-Object -First 2
        foreach ($user in $usersToAdd) {
            try {
                Add-ADGroupMember -Identity $groupName -Members $user.Username -ErrorAction Stop
                Write-Host "Added $($user.Username) ($($user.Title)) to $groupName" -ForegroundColor Green
            } catch {
                Write-Host "Error adding $($user.Username) to $groupName`: $($_.Exception.Message)" -ForegroundColor Red
            }
        }
    }
}

# Final summary
Write-Host "`n=== FINAL SUMMARY ===" -ForegroundColor Cyan
Write-Host "$successCount employees have been successfully created!" -ForegroundColor Green
Write-Host "$errorCount errors occurred during user creation." -ForegroundColor $(if($errorCount -gt 0){"Red"}else{"Green"})

# Verify users were created in each department
Write-Host "`nUsers created by department:" -ForegroundColor White
foreach ($dept in $DepartmentalStructure.Keys) {
    $deptOUPath = "OU=$dept,OU=Employees,$BaseDomain"
    try {
        $deptUserCount = (Get-ADUser -Filter * -SearchBase $deptOUPath | Measure-Object).Count
        Write-Host "  ${dept}: $deptUserCount users" -ForegroundColor White
    } catch {
        Write-Host "  ${dept}: Error counting users" -ForegroundColor Red
    }
}

# Verify security groups
Write-Host "`nSecurity group memberships:" -ForegroundColor White
foreach ($group in $SecurityGroups) {
    try {
        $memberCount = (Get-ADGroupMember -Identity $group | Measure-Object).Count
        Write-Host "  ${group}: $memberCount members" -ForegroundColor White
    } catch {
        Write-Host "  ${group}: Error counting members" -ForegroundColor Red
    }
}

Write-Host "`n=== Script completed successfully! ===" -ForegroundColor Green
Write-Host "You can now verify the setup using Active Directory Users and Computers." -ForegroundColor Yellow
