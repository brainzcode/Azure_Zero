# Choosing the Right Azure Administration Tool

## Key Question: What are your needs?

- **Portal:** Website for managing Azure. Great for one-off tasks and those new to Azure.
    
    - Pros: Visual, guided, no syntax to learn.
    - Cons: No automation.
- **Azure CLI:** Command-line interface, cross-platform. Works in the browser (Cloud Shell) or locally.
    
    - Pros: Scriptable for automation, flexible across OSes.
    - Cons: Requires learning command syntax.
```az
	az vm create \ 
	--resource-group CrmTestingResourceGroup \ 
	--name CrmUnitTests \ 
	--image Ubuntu2204 
```

- **Azure PowerShell:** Adds Azure-specific commands to PowerShell. Also works in Cloud Shell or locally.
    
    - Pros: Automation, leverages existing PowerShell skills.
    - Cons: Command syntax, requires PowerShell knowledge.
    ```azure
    New-AzVm `
		    -ResourceGroupName "CrmTestingResourceGroup" `
		    -Name "CrmUnitTests" `
		    -Image "UbuntuLTS"
    ...
    ```

## Factors in Decision-Making

- **Automation:** Need to repeat complex tasks? Portal is out, consider PowerShell or CLI.
- **Learning Curve:** Need something admins can use quickly? Portal might be the fastest initially.
- **Team Skills:** Existing PowerShell experience makes Azure PowerShell a natural fit.

## Example Scenario: CRM Testing

- **Resource Groups:** One-time creation, so the portal is fine.
- **VMs:** Need to be created repeatedly, so automation is key. CLI or PowerShell are both good options, leaning towards PowerShell if admins have that background.

## Takeaway

- Many organizations use a mix of tools – the portal for initial setup or one-time tasks, then PowerShell/CLI for automating recurring work.