# Authentication Methods.

* **Microsoft Account:** For individual users.
* **GitHub Account:** If you utilize GitHub.
* **Microsoft Entra ID:** Ideal for organizations, providing centralized identity management.

**Personal Access Tokens (PATs)**

* **Use Cases:** For tools without direct Microsoft/Entra support, command-line access, REST APIs, or tasks in build pipelines.
* **Security:**  Revocable when access is no longer needed. 

**Security Groups**

* **Pre-configured Groups:** Azure DevOps has default security groups with assigned permissions.
* **Customization:** Control access at organization, collection, or project/object levels.

**App Access & Conditional Access Policies**

* **Organizational Settings:** Control alternate authentication methods, third-party OAuth access, and even anonymous access for specific projects.
* **Conditional Access:** Enforce stricter authentication based on conditions like multifactor authentication (MFA), group membership, network location, device health, etc.

**Key Takeaways**

* Azure DevOps offers a flexible authentication system to suit various needs and security levels.
* Balance usability with security by choosing appropriate authentication methods and access policies.
* Leverage PATs for tools and scripts, and consider MFA for enhanced security. 


