# User Accounts in Microsoft Entra ID

Every user who needs access to Azure resources requires an Azure user account. This account houses the necessary information for authentication. Microsoft Entra ID supports three main types of user accounts:

| Account Type          | Description                                                                     |
|-----------------------|---------------------------------------------------------------------------------|
| Cloud Identity        | User account created and managed entirely within Microsoft Entra ID.              |
| Directory-Synchronized Identity | User account originating from on-premises Active Directory, synchronized to Azure. |
| Guest User            | User account defined outside Azure (e.g., other cloud providers, Microsoft accounts). Ideal for external collaborators. |

**Key Considerations When Choosing User Accounts**

* **Where are users defined?** Determine if users are internal to your organization, exist in external Microsoft Entra instances, or are outside collaborators.
* **External Contributors:** Guest user accounts provide the ideal way to grant access to external vendors or contractors, with easy removal when access is no longer needed.
* **Flexibility:** Most organizations benefit from supporting a combination of user account types based on their specific business needs. 

