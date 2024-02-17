#!/bin/bash

az vm create --resource-group "resource-group-name" --name vm-name --public-ip-sku Standard --image Ubuntu2204 --admin-username admin-username --generate-ssh-keys

az vm extension set --resource-group "resource-group-name" --vm-name vm-name --name customScript --publisher Microsoft.Azure.Extensions --version 2.1 --settings '{"fileUris":["https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh"]}' --protected-settings '{"commandToExecute": "./configure-nginx.sh"}'