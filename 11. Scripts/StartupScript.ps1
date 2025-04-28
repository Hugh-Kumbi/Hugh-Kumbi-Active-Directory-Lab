# PowerShell Computer Startup Script for hughdomain.local
# Save as StartupScript.ps1 in \\hughdomain.local\SYSVOL\hughdomain.local\scripts\

# Set log path
$LogPath = "\\WIN-D2PQBCI88JQ\LogFiles\$env:COMPUTERNAME-startup.log"

# Log the startup event
$LogMessage = "$(Get-Date -Format 'yyyy-MM-dd HH:mm:ss') - Computer $env:COMPUTERNAME started up"
Add-Content -Path $LogPath -Value $LogMessage

# Display notification (will show on the login screen)
try {
    $message = "Computer startup script is running. Please wait..."
    $title = "Domain Startup Script"
    
    # Create a temporary VBS file to show a popup
    $vbsPath = "$env:TEMP\startup-notification.vbs"
    $vbsContent = @"
Set objShell = CreateObject("Wscript.Shell")
objShell.Popup "$message", 5, "$title", 64
"@
    
    $vbsContent | Out-File -FilePath $vbsPath -Encoding ASCII
    Start-Process -FilePath "wscript.exe" -ArgumentList $vbsPath
    
    # Clean up after a delay
    Start-Sleep -Seconds 6
    Remove-Item -Path $vbsPath -Force -ErrorAction SilentlyContinue
}
catch {
    Write-Output "Error displaying notification: $($_.Exception.Message)" | Add-Content -Path $LogPath
}

# Update Windows Defender definitions
try {
    Start-Process -FilePath "$env:ProgramFiles\Windows Defender\MpCmdRun.exe" -ArgumentList "-SignatureUpdate" -NoNewWindow
    Write-Output "Initiated Windows Defender signature update" | Add-Content -Path $LogPath
}
catch {
    Write-Output "Error updating Windows Defender: $($_.Exception.Message)" | Add-Content -Path $LogPath
}

# Check and report system health
$systemInfo = Get-CimInstance -ClassName Win32_OperatingSystem
$diskInfo = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DeviceID='C:'"
$memoryInfo = Get-CimInstance -ClassName Win32_ComputerSystem

$freeSpaceGB = [math]::Round($diskInfo.FreeSpace / 1GB, 2)
$totalSpaceGB = [math]::Round($diskInfo.Size / 1GB, 2)
$freeSpacePercent = [math]::Round(($diskInfo.FreeSpace / $diskInfo.Size) * 100, 2)
$totalMemoryGB = [math]::Round($memoryInfo.TotalPhysicalMemory / 1GB, 2)

# Create system health report
$healthReport = @"
===== System Health Report =====
Computer: $env:COMPUTERNAME
Date: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')
OS: $($systemInfo.Caption) $($systemInfo.Version)
Last Boot Time: $($systemInfo.LastBootUpTime)
C: Drive: $freeSpaceGB GB free of $totalSpaceGB GB ($freeSpacePercent% free)
Memory: $totalMemoryGB GB Total
=======================
"@

Add-Content -Path $LogPath -Value $healthReport

# Check for critical Windows updates
try {
    $UpdateSession = New-Object -ComObject Microsoft.Update.Session
    $UpdateSearcher = $UpdateSession.CreateUpdateSearcher()
    $SearchResult = $UpdateSearcher.Search("IsInstalled=0 and Type='Software' and IsHidden=0")
    
    $pendingUpdates = $SearchResult.Updates.Count
    Write-Output "Pending Windows Updates: $pendingUpdates" | Add-Content -Path $LogPath
    
    if ($pendingUpdates -gt 0) {
        # List first 5 updates
        for ($i=0; $i -lt [Math]::Min(5, $pendingUpdates); $i++) {
            Write-Output "- $($SearchResult.Updates.Item($i).Title)" | Add-Content -Path $LogPath
        }
        
        if ($pendingUpdates -gt 5) {
            Write-Output "- ... and $($pendingUpdates - 5) more updates" | Add-Content -Path $LogPath
        }
    }
}
catch {
    Write-Output "Error checking for Windows updates: $($_.Exception.Message)" | Add-Content -Path $LogPath
}

# Log successful completion
Add-Content -Path $LogPath -Value "Startup script completed at $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"