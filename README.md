# Windows Color Mode Switcher

This project contains PowerShell scripts to switch between Dark Mode and Light Mode for Windows and app color settings.
## Contents

- `dark.ps1`: Switches Windows and apps to Dark Mode.
- `light.ps1`: Switches Windows and apps to Light Mode.
- `dark.bat`: Batch file to easily run the `dark.ps1` script.
- `light.bat`: Batch file to easily run the `light.ps1` script.

## Prerequisites

- Windows OS
- PowerShell (included in Windows)

## Installation

1. **Save the Scripts**:
    - Download or copy the scripts to a directory, `C:\Scripts\theme-switcher`.

2. **Add the Directory to the PATH Environment Variable**:
    - Press `Win + X` and select **System** (or right-click on `This PC` and choose **Properties**).
    - Click on **Advanced system settings**.
    - In the **System Properties** window, click on the **Environment Variables** button.
    - In the **Environment Variables** window, find the **Path** variable in the **System variables** section and select it. Click **Edit**.
    - In the **Edit Environment Variable** window, click **New** and add the path to your scripts directory, e.g., `C:\Scripts\theme-switcher`.
    - Click **OK** to close all windows.

## Usage

Open a Command Prompt or PowerShell window and type the following commands to switch color modes:

- To switch to Dark Mode:
    ```ps
    dark
    ```

- To switch to Light Mode:
    ```ps
    light
    ```

## Notes

- The scripts modify the current user's registry settings, so no administrative privileges are needed.
