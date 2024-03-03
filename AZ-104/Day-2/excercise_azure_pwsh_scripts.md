# Exercise - Create an Azure Resource using scripts in Azure PowerShell


You have used 1 of 10 sandboxes for today. More sandboxes will be available tomorrow.

Recall our original scenario: creating VMs to test our CRM software. When a new build is available, we want to spin up a new VM so we can test the full install experience from a clean image. When we're finished, we want to delete the VM.

Let's try the commands to create a VM.

## Create a Linux VM with Azure PowerShell

Because we're using the Azure sandbox, you don't need to create a resource group. Instead, use the **learn-6acb0fa8-c882-4b62-90da-54b169f1810e** resource group. In addition, be aware of the location restrictions.

Let's create a new Azure VM with PowerShell.

1. Use the `New-AzVm` cmdlet to create a VM.
    
    - Use the **learn-6acb0fa8-c882-4b62-90da-54b169f1810e** resource group .
        
    - Give the VM a name. Typically, you want to use something meaningful that identifies the purposes of the VM, location, and (if there's more than one) instance number. We use "testvm-eus-01" for "Test VM in East US, instance 1." Come up with your own name based on where you place the VM.
        
    - Select a location close to you from the following list, available in the Azure sandbox. Make sure to change the value in the following example command if you're using copy and paste.
        
        - westus2
        - southcentralus
        - centralus
        - eastus
        - westeurope
        - southeastasia
        - japaneast
        - brazilsouth
        - australiasoutheast
        - centralindia
    - Use "Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest" for the image. This image is Ubuntu Linux.
        
    - Use the `Get-Credential` cmdlet and feed the results into the `Credential` parameter.
        
         Important
        
        See the [Linux VM FAQ](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/faq#what-are-the-username-requirements-when-creating-a-vm) for username and password limitations. Passwords must be 12 - 123 characters in length, and meet three of the following four complexity requirements:
        
        > - Have lowercase characters
        > - Have uppercase characters
        > - Have a digit
        > - Have a special character (Regex match [\W_])
        
    - Add the `-OpenPorts` parameter and pass "22" as the port. This port lets us SSH into the machine.
        
    - Create a public IP address name. You use this name to create and find your static IP address to sign in to the machine.
        
    
    PowerShellCopy
    
    ```
    New-AzVm -ResourceGroupName learn-6acb0fa8-c882-4b62-90da-54b169f1810e -Name "testvm-eus-01" -Credential (Get-Credential) -Location "eastus" -Image Canonical:0001-com-ubuntu-server-focal:20_04-lts:latest -OpenPorts 22 -PublicIpAddressName "testvm-eus-01"
    ```
    
     Tip
    
    You can use the **Copy** button to copy commands to the clipboard. To paste, right-click on a new line in the Cloud Shell terminal and select **Paste**, or use the Shift+Insert keyboard shortcut (⌘+V on macOS).
    
2. Create a username and password, then press Enter. PowerShell starts creating your VM.
    
3. The VM creation takes a few minutes to complete. When it's done, you can query it and assign the VM object to a variable (`$vm`).
    
    PowerShellCopy
    
    ```
    $vm = (Get-AzVM -Name "testvm-eus-01" -ResourceGroupName learn-6acb0fa8-c882-4b62-90da-54b169f1810e)
    ```
    
4. Query the value to dump out the information about the VM.
    
    PowerShellCopy
    
    ```
    $vm
    ```
    
    You should see something like the following output:
    
    PowerShellCopy
    
    ```
    ResourceGroupName : [sandbox resource group name]
    Id                : /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/[sandbox resource group name]/providers/Microsoft.Compute/virtualMachines/testvm-eus-01
    VmId              : 00000000-0000-0000-0000-000000000000
    Name              : testvm-eus-01
    Type              : Microsoft.Compute/virtualMachines
    Location          : eastus
    Tags              : {}
    HardwareProfile   : {VmSize}
    NetworkProfile    : {NetworkInterfaces}
    OSProfile         : {ComputerName, AdminUsername, LinuxConfiguration, Secrets}
    ProvisioningState : Succeeded
    StorageProfile    : {ImageReference, OsDisk, DataDisks}
    ```
    
5. You can reach into complex objects through a dot (`.`) notation. For example, to see the properties in the `VMSize` object associated with the HardwareProfile section, run the following command:
    
    PowerShellCopy
    
    ```
    $vm.HardwareProfile
    ```
    
6. Or, to get information on one of the disks, run the following command:
    
    PowerShellCopy
    
    ```
    $vm.StorageProfile.OsDisk
    ```
    
7. You can even pass the VM object into other cmdlets. For example, running the following command shows you all available sizes for your VM:
    
    PowerShellCopy
    
    ```
    $vm | Get-AzVMSize
    ```
    
8. Now, run the following command to get your public IP address:
    
    PowerShellCopy
    
    ```
    Get-AzPublicIpAddress -ResourceGroupName learn-6acb0fa8-c882-4b62-90da-54b169f1810e -Name "testvm-eus-01"
    ```
    
9. With the IP address, you can connect to the VM with SSH. For example, if you used the username `bob`, and the IP address is `205.22.16.5`, running this command would connect to the Linux machine:
    
    PowerShellCopy
    
    ```
    ssh bob@205.22.16.5
    ```
    
    Sign out by entering `exit`.
    

## Delete a VM

To try out some more commands, let's delete the VM. First, we need to shut it down (enter **Y** if prompted to continue):

PowerShellCopy

```
Stop-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName
```

When the VM has stopped, delete the VM by running the `Remove-AzVM` cmdlet (enter **Y** if prompted to continue):

PowerShellCopy

```
Remove-AzVM -Name $vm.Name -ResourceGroupName $vm.ResourceGroupName
```

Run this command to list all the resources in your resource group:

PowerShellCopy

```
Get-AzResource -ResourceGroupName $vm.ResourceGroupName | Format-Table
```

You should see several resources (disks, virtual networks, and so on) that all still exist.

OutputCopy

```
Microsoft.Compute/disks
Microsoft.Network/networkInterfaces
Microsoft.Network/networkSecurityGroups
Microsoft.Network/publicIPAddresses
Microsoft.Network/virtualNetworks
```

The `Remove-AzVM` command _just deletes the VM_. It doesn't clean up any of the other resources. At this point, we'd likely just delete the resource group itself and be done with it. However, let's run through the exercise to clean it up manually. You should see a pattern in the commands.

1. Delete the network interface:
    
    PowerShellCopy
    
    ```
    $vm | Remove-AzNetworkInterface –Force
    ```
    
2. Delete the managed OS disks:
    
    PowerShellCopy
    
    ```
    Get-AzDisk -ResourceGroupName $vm.ResourceGroupName -DiskName $vm.StorageProfile.OSDisk.Name | Remove-AzDisk -Force
    ```
    
3. Next, delete the virtual network:
    
    PowerShellCopy
    
    ```
    Get-AzVirtualNetwork -ResourceGroupName $vm.ResourceGroupName | Remove-AzVirtualNetwork -Force
    ```
    
4. Delete the network security group:
    
    PowerShellCopy
    
    ```
    Get-AzNetworkSecurityGroup -ResourceGroupName $vm.ResourceGroupName | Remove-AzNetworkSecurityGroup -Force
    ```
    
5. Finally, delete the public IP address:
    
    PowerShellCopy
    
    ```
    Get-AzPublicIpAddress -ResourceGroupName $vm.ResourceGroupName | Remove-AzPublicIpAddress -Force
    ```
    

We should have caught all the created resources. Check the resource group just to be sure. We performed many manual commands here, but a better approach would have been to write a script. Then we could reuse this logic later to create or delete a VM. Let's look at scripting with PowerShell.