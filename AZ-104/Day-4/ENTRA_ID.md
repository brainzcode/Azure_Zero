
# Describe Microsoft Entra ID benefits and features


[Microsoft Entra ID](https://learn.microsoft.com/en-us/azure/active-directory/) is Microsoft's multitenant cloud-based directory and identity management service. Microsoft Entra ID helps to support user access to resources and applications, such as:

- Internal resources and apps located on your corporate network.
    
- External resources like Microsoft 365, the Azure portal, and SaaS applications.
    
- Cloud apps developed for your organization.
    

The following diagram shows an example implementation of Microsoft Entra ID. In this scenario, Windows Server AD is using [Kerberos](https://learn.microsoft.com/en-us/windows-server/security/kerberos/kerberos-authentication-overview) and [NTLM authentication](https://learn.microsoft.com/en-us/windows-server/security/kerberos/ntlm-overview) to on-premises applications.

![Diagram that shows Windows Server Active Directory using Kerberos and NTLM authentication to on-premises apps.](https://learn.microsoft.com/en-us/training/wwl-azure/configure-azure-active-directory/media/azure-active-directory-a3b1df09.png)

## Things to know about Microsoft Entra features

Let's examine some of the prominent features of Microsoft Entra ID.

Expand table

|Azure AD feature|Description|
|---|---|
|**Single sign-on (SSO) access**|Microsoft Entra ID provides secure single sign-on (SSO) to web apps on the cloud and to on-premises apps. Users can sign in with the same set of credentials to access all their apps.|
|**Ubiquitous device support**|Microsoft Entra ID works with iOS, macOS, Android, and Windows devices, and offers a common experience across the devices. Users can launch apps from a personalized web-based access panel, mobile app, Microsoft 365, or custom company portals by using their existing work credentials.|
|**Secure remote access**|Microsoft Entra ID enables secure remote access for on-premises web apps. Secure access can include multifactor authentication (MFA), conditional access policies, and group-based access management. Users can access on-premises web apps from everywhere, including from the same portal.|
|**Cloud extensibility**|Microsoft Entra ID can extend to the cloud to help you manage a consistent set of users, groups, passwords, and devices across environments.|
|**Sensitive data protection**|Microsoft Entra ID offers unique identity protection capabilities to secure your sensitive data and apps. Admins can monitor for suspicious sign-in activity and potential vulnerabilities in a consolidated view of users and resources in the directory.|
|**Self-service support**|Microsoft Entra ID lets you delegate selected administrator tasks to company employees. Providing self-service app access and password management through verification steps can reduce helpdesk calls and enhance security.|

## Considerations for Using Microsoft Entra ID

### Key Benefits to Evaluate

- **Single Sign-On (SSO):** Streamlined access to cloud and on-premises apps with a single set of credentials.
- **Consistent User Experience:** Design a seamless login process across all devices and locations.
- **Secure Remote Access:** Protect on-premises web apps with multi-factor authentication (MFA) and smart access policies.
- **Cloud Integration:** Easily connect Active Directory and other directories to Microsoft Entra ID for centralized management.
- **Advanced Data Protection:** Safeguard sensitive information with built-in security reporting, alerts, and risk-based policies.
- **Cost Reduction & Self-Service:** Lower admin overhead by empowering users to perform tasks like password resets.

## Before You Deploy

Carefully assess your organization's specific needs and how these features align with them to make the most of Microsoft Entra ID.