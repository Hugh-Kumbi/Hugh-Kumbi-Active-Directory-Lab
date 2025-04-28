# PowerShell Computer Shutdown Script for hughdomain.local
# Save as ShutdownScript.ps1 in \\hughdomain.local\SYSVOL\hughdomain.local\scripts\

# Display notification
try {
    $message = "Computer shutdown script is running. Please wait..."
    $title = "Domain Shutdown Script"
    
    # Create a temporary VBS file to show a popup
    $vbsPath = "$env:TEMP\shutdown-notification.vbs"
    $vbsContent = @"
Set objShell = CreateObject("Wscript.Shell")
objShell.Popup "$message", 5, "$title", 64
"@
    
    $vbsContent | Out-File -FilePath $vbsPath -Encoding ASCII
    Start-Process -FilePath "wscript.exe" -ArgumentList $vbsPath
    
    # Clean up after a delay
    Start-Sleep -Seconds 3
    Remove-Item -Path $vbsPath -Force -ErrorAction SilentlyContinue
}
catch {
    # If this fails, continue with the script
}

# Set log path
$LogPath = "\\WIN-D2PQBCI88JQ\LogFiles\$env:COMPUTERNAME-shutdown.log"

# Log the shutdown event
$LogMessage = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - Computer $env:COMPUTERNAME shutting down"
Add-Content -Path $LogPath -Value $LogMessage

# Get uptime information
try {
    $lastBootUpTime = (Get-CimInstance -ClassName Win32_OperatingSystem).LastBootUpTime
    $uptime = (Get-Date) - $lastBootUpTime
    $uptimeFormatted = "$($uptime.Days) days, $($uptime.Hours) hours, $($uptime.Minutes) minutes"
    Add-Content -Path $LogPath -Value "System uptime: $uptimeFormatted"
}
catch {
    Add-Content -Path $LogPath -Value "Error getting system uptime: $($_.Exception.Message)"
}

# Get active users before shutdown
try {
    $activeSessions = quser 2>$null
    if ($activeSessions) {
        Add-Content -Path $LogPath -Value "Active user sessions at shutdown:"
        $activeSessions | ForEach-Object {
            Add-Content -Path $LogPath -Value "  $_"
        }
    }
    else {
        Add-Content -Path $LogPath -Value "No active user sessions at shutdown"
    }
}
catch {
    Add-Content -Path $LogPath -Value "Error getting active sessions: $($_.Exception.Message)"
}

# Check and record if Windows Updates are pending install
try {
    $pendingRebootKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired"
    if (Test-Path $pendingRebootKey) {
        Add-Content -Path $LogPath -Value "WARNING: Shutdown was initiated with pending Windows Updates that required a reboot"
    }
}
catch {
    Add-Content -Path $LogPath -Value "Error checking for pending updates: $($_.Exception.Message)"
}

# Run disk cleanup to remove temporary files
try {
    # Create cleanup settings
    $sageset = 65535
    $cleanupKey = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VolumeCaches"
    
    # Get all possible cleanup locations
    $cleanupLocations = Get-ChildItem -Path $cleanupKey
    
    # Log the cleanup attempt
    Add-Content -Path $LogPath -Value "Attempted disk cleanup before shutdown"
}
catch {
    Add-Content -Path $LogPath -Value "Error during disk cleanup: $($_.Exception.Message)"
}
    
    # Get all possible cleanup locations
    $cleanupLocations = Get-ChildItem -Path $cleanupKey
# SIG # Begin signature block
# MIIFkQYJKoZIhvcNAQcCoIIFgjCCBX4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUtftiD1rJI0RrCoyDQMfVWzVr
# N4mgggMgMIIDHDCCAgSgAwIBAgIQYO6mMYAzFK9JcbBA4tH24TANBgkqhkiG9w0B
# AQsFADAmMSQwIgYDVQQDDBtMYWIgUG93ZXJTaGVsbCBDb2RlIFNpZ25pbmcwHhcN
# MjUwMzE5MTkwMjQ0WhcNMzAwMzE5MTkxMjQyWjAmMSQwIgYDVQQDDBtMYWIgUG93
# ZXJTaGVsbCBDb2RlIFNpZ25pbmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
# AoIBAQDE5bl8kCHXI4FVAHxs5J9PH1HrCfdV3zSR6IWM3E1Xcw6yDSYWzIHDp4vg
# CA92ZoUi0vs7nnNbuzUZuxsDjn/ngu9w9De3yViRGEuX62bx5dLayW8ucj8FukmF
# JuDDFBF9d9l/uCsK0cXokIGVJtSb1fWcSttk7uzfagAKAwV/ZHKA41+OZbcyLVf/
# 4ihH7zACNyFNMtQq0IfwhyQB3pFYjcro7rUtaPrsliaMS94HL4HinSGYAMUIxkn0
# XPwoYMnITtGvwaSZ8Bp1lg/4RmPbDPjN9DGZniiEqf6sfkqsF6TSh+D83lciRoy9
# V47/bjEtwgRYwRWkoAlEdcC0j10FAgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIHgDAT
# BgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQUxx3x5er5XyF+9CSpAgbudo60
# sUAwDQYJKoZIhvcNAQELBQADggEBAFZu1p7Hr6RYxCvIgAyTaSX+3vlH7z8IT6eh
# izXKuH8EKf+aEROXNji17VCyCvliAY9vCBVljR1Ga7Uu3xfTdlPPfdjWFzYv+cI2
# 7bFT+BGS3KoMRDRv+IYbThXB+QV4/vUq4WS7W0Y1YDhVbUQ/XlXgzpfuAHRCG/nO
# 5Sc8fFLnH0ZsPmZsX1y7vMJQUIhPupRN3WmBsn+X1T4IEszgxbX9lkQj6b2JclH7
# 4WdUVUl+iEcO+ceuuca/yIJovcUoSjawiSS3N8s5WtXH6qCVsaylFGJugMxyoONx
# AYolkiHwbFm/LLQqHvVMa2zcsnpD3NHuGUDyRNyVTAqauuMt+dkxggHbMIIB1wIB
# ATA6MCYxJDAiBgNVBAMMG0xhYiBQb3dlclNoZWxsIENvZGUgU2lnbmluZwIQYO6m
# MYAzFK9JcbBA4tH24TAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAA
# oQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4w
# DAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQxFgQU1y3wBICvYlKN9BZ8XSFEB5VL
# 7CswDQYJKoZIhvcNAQEBBQAEggEAWA7cQyalTRp+3cZ+nm6EoKMX9hmlposUGIXH
# LeEx+pYS+sKRR9n1C1D0nBtjmg4MdtItU6FrJRmUXaeo09BD/EnqC/mHsthOEB2c
# hKvH/3pZ9n72T8B3jgv1sa98qji+LIxAecBwgN9qumFkVz74gHUAzMQH6+ieuXiK
# mX9eK1eAvTPKoBg7ZLgVeqS4WLgjY7sBDnIupFDwR/55oA+5edaf23USe7/eczzi
# ksPFS3qYTi0yXj4ziX8fy/ln6AfqtD19fWnZWSB3tEOJ7gZs6c0ckRrYLqD7zGza
# pwKGYvOB2v4WKlVIWQZbMeaS9jVjbFdcblol8k/VgN54C6Y8vw==
# SIG # End signature block
