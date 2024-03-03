# Exercise - Create and save scripts in Azure PowerShell

In this unit, you'll continue with the example of a company that makes Linux admin tools. Recall that you plan to use Linux VMs to let potential customers test your software. You have a resource group ready, and now it's time to create the VMs.

Your company has paid for a booth at a large Linux trade show. You plan a demo area containing three terminals each connected to a separate Linux VM. At the end of each day, you want to delete the VMs and re-create them so they start fresh every morning. Creating the VMs manually after work when you're tired would be error prone. You want to write a PowerShell script to automate the VM-creation process.

## Write a script to create virtual machines

Follow these steps in Cloud Shell on the right to write the script:

1. Switch to your home folder in Cloud Shell.
    
    PowerShellCopy
    
    ```
    cd $HOME\clouddrive
    ```
    
2. Create a new text file, named **ConferenceDailyReset.ps1**.
    
    PowerShellCopy
    
    ```
    touch "./ConferenceDailyReset.ps1"
    ```
    
3. Open the integrated editor, and select the **ConferenceDailyReset.ps1** file.
    
    PowerShellCopy
    
    ```
    code "./ConferenceDailyReset.ps1"
    ```
    
     Tip
    
    The integrated Cloud Shell also supports vim, nano, and emacs if you'd prefer to use one of those editors.
    
4. Start by capturing the input parameter in a variable. Add the following line to your script.
    
    PowerShellCopy
    
    ```
    param([string]$resourceGroup)
    ```
    
     Note
    
    Normally, you'd have to authenticate with Azure using your credentials using `Connect-AzAccount`, and you could do so in the script. However, in the Cloud Shell environment, you're already authenticated, so this is unnecessary.
    
5. Prompt for a username and password for the VM's admin account and capture the result in a variable:
    
    PowerShellCopy
    
    ```
    $adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."
    ```
    
6. Create a loop that executes three times:
    
    PowerShellCopy
    
    ```
    For ($i = 1; $i -le 3; $i++) 
    {
    
    }
    ```
    
7. In the loop body, create a name for each VM and store it in a variable, and output it to the console:
    
    PowerShellCopy
    
    ```
    $vmName = "ConferenceDemo" + $i
    Write-Host "Creating VM: " $vmName
    ```
    
8. Next, create a VM using the `$vmName` variable:
    
    PowerShellCopy
    
    ```
    New-AzVm -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest
    ```
    
9. Save the file. You can use the "..." menu at the top-right corner of the editor. There are also common accelerator keys for _Save_, like Ctrl + S.
    

The completed script should look like the following code:

PowerShellCopy

```
param([string]$resourceGroup)

$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."

For ($i = 1; $i -le 3; $i++)
{
    $vmName = "ConferenceDemo" + $i
    Write-Host "Creating VM: " $vmName
    New-AzVm -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest
}
```

Alternatively:

```
param([string]$resourceGroup)
$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."

for ($i = 1; $i -le 3; $i++) {
    $vmName = "ConferenceDemo" + $i
    Write-Host "Creating VM: $vmName"

    try {
        New-AzVm -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest
    } catch {
        Write-Error "Failed to create VM $vmName: $($_.Exception.Message)"
    }
}
```

## Run the script

1. Save the file and close the editor using the "..." context menu on the top right of the editor (or use Ctrl + Q).
    
2. Run the script.
    
    PowerShellCopy
    
    ```
    ./ConferenceDailyReset.ps1 learn-6cdff0c5-1ebe-4008-9af2-9d2099fd9ec2
    ```
    
    The script will take several minutes to complete. When it's finished, verify it ran successfully by looking at the resources you now have in your resource group:
    
    PowerShellCopy
    
    ```
    Get-AzResource -ResourceType Microsoft.Compute/virtualMachines
    ```
    

You should have three VMs, each with a unique name.