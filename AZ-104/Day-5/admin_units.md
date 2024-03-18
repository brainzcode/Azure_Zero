# Why Use Administrative Units?

* **Delegated Administration:** AUs enable you to subdivide your organization and assign specific administrators to manage only the users, groups, and resources within their designated unit. This is ideal for large, decentralized organizations.
* **Example:** In a university setting, you could create AUs for each school (Business, Engineering, Medicine), allowing dedicated IT teams to manage their school's resources without affecting the broader organization.

**Key Things to Consider**

* **Management Tools:** AUs can be managed through the Azure Portal, PowerShell, or Microsoft Graph API.
* **Permissions:** Only Global Administrators or Privileged Role Administrators can initially create and manage AUs in the Azure Portal.
* **Scope:** AUs restrict *management* permissions. Members and admins within an AU can still view other users, groups, or resources outside their unit using their default *user* permissions.

**How to Implement AUs**

1. **Define Your Structure:** Carefully plan your AU structure based on your organization's divisions and administrative needs.
2. **Create AUs:** Use the appropriate management tool (Azure Portal, PowerShell, or Graph API).
3. **Populate AUs:** Add the relevant users, groups, and devices to each AU.
4. **Assign Roles with AU Scope:** Assign administrative roles (e.g., User Administrator) and select the desired AU as the scope. This restricts the admin's actions to that specific AU.

