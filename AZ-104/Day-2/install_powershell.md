# Install PowerShell


Suppose you've chosen Azure PowerShell as your automation solution. Your administrators prefer to run their scripts locally rather than in the Azure Cloud Shell. The team uses machines that run Linux, macOS, and Windows. You need to get Azure PowerShell working on all their devices.

## What must be installed?

We'll go through the actual installation instructions in the next unit, but let's look at the two components that make up Azure PowerShell.

- **The base PowerShell product**: This comes in two variants: Windows PowerShell and PowerShell 7.x, which you can install on Windows, macOS, and Linux.
- **The Azure Az PowerShell module**: You need to install this extra module to add the Azure-specific commands to PowerShell.

 Tip

PowerShell 7.0.6 LTS, PowerShell 7.1.3, or higher is the version of PowerShell we recommend for use with the Azure Az PowerShell module on all platforms.

Once you've installed the base product, you'll then add the Azure PowerShell module to your installation.

## How to install PowerShell

On both Linux and macOS, you'll use a package manager to install PowerShell Core. The recommended package manager differs by OS and distribution.

 Note

PowerShell is available in the Microsoft repository, so you'll first need to add that repository to your package manager.

### Linux

On Linux, the package manager will change based on the Linux distribution you choose.

Expand table

|Distribution(s)|Package manager|
|---|---|
|Ubuntu, Debian|`apt-get`|
|Red Hat, CentOS|`yum`|
|OpenSUSE|`zypper`|
|Fedora|`dnf`|

### Mac

On macOS, use `Homebrew` to install PowerShell.

In the next section, we'll go through the detailed installation steps for some common platforms.

## macOS

On macOS, install **PowerShell** by using the Homebrew package manager.

 Important

If the **brew** command is unavailable, you might need to install the Homebrew package manager. For details, go to the [Homebrew website](https://brew.sh/).

1. Install Homebrew-Cask to obtain more packages, including the PowerShell package:
    
    BashCopy
    
    ```
    brew install --cask powershell
    ```
    
2. Start PowerShell to verify that it installed successfully:
    
    BashCopy
    
    ```
    pwsh
    ```
    
## Linux

Installing PowerShell for Linux involves using a package manager. We'll use **Ubuntu 18.04** for our example, but we have [detailed instructions for other versions and distributions in our documentation](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux).

Install PowerShell on Ubuntu Linux using the Advanced Packaging Tool (**apt**) and the Bash command line.

1. Import the encryption key for the Microsoft Ubuntu repository. This key enables the package manager to verify that the PowerShell package you install comes from Microsoft.
    
    BashCopy
    
    ```
    curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
    ```
    
2. Register the **Microsoft Ubuntu repository** so the package manager can locate the PowerShell package:
    
    BashCopy
    
    ```
    sudo curl -o /etc/apt/sources.list.d/microsoft.list https://packages.microsoft.com/config/ubuntu/18.04/prod.list
    ```
    
3. Update the list of packages:
    
    BashCopy
    
    ```
    sudo apt-get update
    ```
    
4. Install PowerShell:
    
    BashCopy
    
    ```
    sudo apt-get install -y powershell
    ```
    
5. Start PowerShell to verify that it installed successfully:
    
    BashCopy
    
    ```
    pwsh
    ```

## Windows

Windows PowerShell is included with the Windows operating system; however, we recommend installing PowerShell 7.0.6 LTS, PowerShell 7.1.3, or higher for use with Azure Az PowerShell module PowerShell. You can check which version is installed using the following steps:

1. In the **System tray search box**, type **PowerShell**. You may have multiple shortcut links:
    
    - PowerShell 7 (x64) - The 64-bit version. Generally, you should choose this shortcut.
    - Windows PowerShell - The 64-bit version included with Windows.
    - Windows PowerShell (x86) - A 32-bit version installed on 64-bit Windows.
    - Windows PowerShell ISE - The Integrated Scripting Environment (ISE) is used for writing scripts in Windows PowerShell.
    - Windows PowerShell ISE (x86) - A 32-bit version of the ISE on Windows.
2. Select the best-match PowerShell icon.
    
3. Type the following command to determine the version of PowerShell installed.
    
    PowerShellCopy
    
    ```
    $PSVersionTable.PSVersion
    ```
    
    _or_
    
    PowerShellCopy
    
    ```
    pwsh -ver
    ```
    
    If the major version number is lower than 7, follow the instructions to [upgrade existing Windows PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows#upgrading-an-existing-installation). It's important to install the SDK to support .NET tools, as well.
    
    You need the [.NET SDK installed](https://learn.microsoft.com/en-us/dotnet/core/sdk) to run this command.
    
    PowerShellCopy
    
    ```
    dotnet tool install --global PowerShell
    ```
    
    After the .NET tool is installed, run the PowerShell version command again to verify your installation.