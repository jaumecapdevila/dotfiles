# Sync Global NPM Packages

These instructions outline a simple method to synchronize your globally installed npm packages from one device to another.

## Prerequisites

- **Node.js and npm:** Must be installed on both the source and target devices.
- **`jq`:** A lightweight and flexible command-line JSON processor. You need to install it on the target device. You can usually install it with a package manager like Homebrew (`brew install jq`) or Chocolatey (`choco install jq`).

## Instructions

### 1. On your Source Device

First, you need to generate a list of your globally installed packages.

1.  Open your terminal or command prompt.
2.  Run the following command to create a `global-packages.json` file in your current directory:

    ```bash
    npm list -g --depth=0 --json > global-packages.json
    ```

3.  Transfer this `global-packages.json` file to your target device (e.g., using a USB drive, cloud storage, or a network transfer).

### 2. On your Target Device

Now, you will use the file you transferred to install the same packages.

1.  Open your terminal or command prompt.
2.  Navigate to the directory where you saved the `global-packages.json` file.
3.  Run the following command to read the package names from the JSON file and install them globally:

    ```bash
    npm install -g $(jq -r '.dependencies | keys | .[]' global-packages.json)
    ```

    _Note: If you are on a Windows system using PowerShell, the `$(...)` sub-shell command might work differently. You may need to first extract the package names and then pass them to `npm install -g`._

That's it! Your global npm packages should now be in sync. You can repeat this process whenever you want to update the packages on your target device.
