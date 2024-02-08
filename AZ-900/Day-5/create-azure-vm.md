# Create a Linux virtual machine and install Nginx
- Use the following Azure CLI commands to create a Linux VM and install Nginx. After your VM is created, you'll use the Custom Script Extension to install Nginx. The Custom Script Extension is an easy way to download and run scripts on your Azure VMs. It's just one of the many ways you can configure the system after your VM is up and running.

- **From Cloud Shell, run the following az vm create command to create a Linux VM:**

    ```shell
    az vm create --resource-group "resource-group-name" --name vm-name --public-ip-sku Standard --image Ubuntu2204 --admin-username admin-username --generate-ssh-keys
    ```

 
- Your VM will take a few moments to come up. You named the VM my-vm. You use this name to refer to the VM in later steps.

- **Run the following az vm extension set command to configure Nginx on your VM:**


    ```shell
    az vm extension set --resource-group "resource-group-name" --vm-name vm-name --name customScript --publisher Microsoft.Azure.Extensions --version 2.1 --settings '{"fileUris":["https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh"]}' --protected-settings '{"commandToExecute": "./configure-nginx.sh"}' 
    ``` 
    
    This command uses the Custom Script Extension to run a Bash script on your VM. The script is stored on GitHub. While the command runs, you can choose to examine the Bash script from a separate browser tab. To summarize, the script:

    Runs apt-get update to download the latest package information from the internet. This step helps ensure that the next command can locate the latest version of the Nginx package.
    Installs Nginx.
    Sets the home page, /var/www/html/index.html, to print a welcome message that includes your VM's host name.