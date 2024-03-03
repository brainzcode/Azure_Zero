# Create and save scripts in Azure PowerShell

## Why Automate?

- **Save Time:** Eliminate manual steps in repetitive tasks.
- **Reduce Errors:** Scripts ensure consistent execution, minimizing mistakes.

## CRM Example Automation Goals

- **Multiple VMs:** Use a loop to create them efficiently.
- **Flexibility:** Parameterize the resource group name for reuse in different environments.

## Benefits of PowerShell for Automation

- **PowerShell Looping:** Easily repeat operations.
- **Parameters:** Allow scripts to be customized with input, making them adaptable.

## What is a PowerShell script?

A PowerShell script is a text file containing commands and control constructs. The commands are invocations of cmdlets. The control constructs are programming features like loops, variables, parameters, comments, and so on supplied by PowerShell.

- **Purpose:** Automate tasks by bundling PowerShell instructions together.
- **Essentially:** A text file with the `.ps1` extension.
- **Contents:**
    - **Cmdlets:** The building blocks of PowerShell, each performing a specific task.
    - **Control Constructs:** Programming elements (loops, variables, etc.) for more complex logic.

## Creating Scripts

- **Any Text Editor Works:** Notepad will do, but Vscode will be more efficient.
- **Windows PowerShell ISE:** Offers helpful features like syntax coloring for better readability.

The following screenshot shows the Windows PowerShell Integrated Scripting Environment (ISE) with a sample script to connect to Azure and create a virtual machine in Azure.

> ![Screenshot of the Windows PowerShell Integrated Scripting Environment with a script to create a virtual machine open in the editing window.](https://learn.microsoft.com/en-us/training/modules/automate-azure-tasks-with-powershell/media/7-windows-powershell-ise-screenshot.png)

Once you've written the script, execute it from the PowerShell command line by passing the name of the file preceded by a dot and a backslash:

PowerShellCopy

```
.\myScript.ps1
```

## PowerShell techniques

PowerShell has many features found in typical programming languages. You can define variables, use branches and loops, capture command-line parameters, write functions, add comments, and so on. We'll need three features for our script: variables, loops, and parameters.

### Variables

In the previous unit, you saw that PowerShell supports variables. Use `$` to declare a variable and `=` to assign a value. For example:

PowerShellCopy

```
$loc = "East US"
$iterations = 3
```

Variables can hold objects. For example, the following definition sets the **adminCredential** variable to the object returned by the **Get-Credential** cmdlet.

PowerShellCopy

```
$adminCredential = Get-Credential
```

To obtain the value stored in a variable, use the `$` prefix and its name, as in the following:

PowerShellCopy

```
$loc = "East US"
New-AzResourceGroup -Name "MyResourceGroup" -Location $loc
```

### Loops

PowerShell has several loop structures, including `For`, `Do...While`, and `For...Each`. The `For` loop is the best match for our needs, because we'll execute a cmdlet a fixed number of times.

The following example shows the core syntax. The example runs for two iterations and prints the value of **i** each time. The comparison operators are written `-lt` for "less than," `-le` for "less than or equal," `-eq` for "equal," `-ne` for "not equal," etc.

PowerShellCopy

```
For ($i = 1; $i -lt 3; $i++)
{
    $i
}
```

### Parameters

When you execute a script, you can pass arguments on the command line. You can provide names for each parameter to help the script extract the values. For example:

PowerShellCopy

```
.\setupEnvironment.ps1 -size 5 -location "East US"
```

Inside the script, you'll capture the values into variables. In this example, the parameters are matched by name:

PowerShellCopy

```
param([string]$location, [int]$size)
```

You can omit the names from the command line. For example:

PowerShellCopy

```
.\setupEnvironment.ps1 5 "East US"
```

Inside the script, you'll rely on position for matching when the parameters are unnamed:

PowerShellCopy

```
param([int]$size, [string]$location)
```

We could take these parameters as input and use a loop to create a set of VMs from the given parameters. We'll try that next.

The combination of PowerShell and Azure PowerShell gives you all the tools you need to automate Azure. In our CRM example, we'll be able to create multiple Linux VMs using a parameter to keep the script generic and a loop to avoid repeated code. This script allows us to execute a formerly complex operation in a single step.