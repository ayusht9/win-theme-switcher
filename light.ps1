# Set Windows color mode
function Set-WindowsColorModeToLight {
    # Registry key for system color mode to light
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 1
    
    # Registry key for app color mode to light
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 1
}

# Refreshing the settings by restarting the Explorer process
function Restart-Explorer {
    Stop-Process -Name explorer -Force
    Start-Process explorer
}

Set-WindowsColorModeToLight
Restart-Explorer

Write-Host "Switched to Light Mode successfully."
