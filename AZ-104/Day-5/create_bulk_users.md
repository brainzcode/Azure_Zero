# Methods for Bulk User Account Operations

* **Azure Portal:**  Provides a "Bulk Create User" option for streamlined account creation. Global and User administrators can use this feature.
* **Azure PowerShell:**  Allows for bulk uploads of user accounts for more technical users. 

**Key Information about Bulk Operations**

* **CSV Templates:** Both the Azure Portal and PowerShell rely on CSV (comma-separated value) files to define user account details. Templates are available for download from the Microsoft Entra admin center.
* **Bulk Downloads:** You can also download lists of existing user accounts in bulk format.

**Considerations When Creating User Accounts in Bulk**

* **Naming Conventions:** Establish clear naming conventions for user accounts, display names, and aliases to promote consistency and simplify the CSV creation process.
* **Initial Passwords:** Decide on a strategy for generating and securely communicating initial passwords to new users.
* **Error Minimization:** Download the results file after a bulk operation to check for errors (e.g., duplicate accounts). Troubleshooting smaller batches of accounts can be easier.

