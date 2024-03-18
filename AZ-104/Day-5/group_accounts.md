# Types of Group Accounts

* **Security Groups:**  Primarily for managing permissions and access to shared resources. Simplifies security by applying permissions to the group rather than individual users. 
* **Microsoft 365 Groups:** Designed for collaboration, providing access to a shared mailbox, calendar, SharePoint site, and other tools. Can include guest users from outside your organization.

**Key Points about Group Creation**

* **Security Groups:** Typically created by Microsoft Entra administrators.
* **Microsoft 365 Groups:**  Can be created by both admins and standard users.

**Considerations for Adding Group Members**

* **Assigned:** Manually add specific users, allowing for individual permission customization within the group if needed.
* **Dynamic User:**  Membership is automatically managed based on user attributes (e.g., department, job title). Ideal for groups where membership needs to reflect frequent changes.
* **Dynamic Device (Security Groups Only):** Similar to dynamic user rules, but applies to devices instead. Useful for automating security policies based on device properties.

