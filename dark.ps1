# Set Windows color mode
function Set-WindowsColorModeToDark {
    # Registry key for system color mode to dark
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'SystemUsesLightTheme' -Value 0
    
    # Registry key for app color mode to dark
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize' -Name 'AppsUseLightTheme' -Value 0
}

# Refreshing the settings by restarting the Explorer process
function Restart-Explorer {
    Stop-Process -Name explorer -Force
    Start-Process explorer
}

Set-WindowsColorModeToDark
Restart-Explorer

Write-Host "Switched to Dark Mode successfully."
