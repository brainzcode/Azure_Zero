
# Active Directory Domain Services (AD DS) vs. Microsoft Entra ID

## Understanding AD DS

- **Traditional Deployment:** Runs on dedicated physical or virtual servers, typically on-premises.
- **Components:** Includes AD CS, AD LDS, AD FS, and AD RMS for various identity-related functions.

## When to Choose AD DS

- **Legacy Workloads:** If you have applications that _strictly_ require traditional Active Directory features, AD DS might be needed.

## Why Consider Microsoft Entra ID

- **Cloud-Native:** Designed for modern cloud-based scenarios.
- **Simplified Management:** Reduced overhead compared to managing your own AD DS infrastructure.
- **Scalability & Security:** Benefits from Microsoft's cloud scale and security investments.
- **Integration:** Works seamlessly with Azure and Microsoft 365 services.

**Takeaway:** Unless you have a strong reason to use AD DS, Microsoft Entra ID is usually the better choice for cloud-centric environments.

## Understanding the Shift from AD DS to Microsoft Entra ID

### It's Not Just 'AD in the Cloud'

**`While both manage identities, there are fundamental differences:`**

- **Focus:**
    - AD DS: Primarily a directory service.
    - Microsoft Entra ID: Comprehensive identity solution built for modern web-based applications.
- **Protocols:**
    - AD DS: Relies heavily on Kerberos
    - Microsoft Entra ID: Uses web protocols like SAML, OAuth, OpenID Connect for authentication.
- **Federation:** Microsoft Entra ID has built-in federation services, including support for third-party providers.
- **Structure:**
    - AD DS: Hierarchical (OUs, GPOs)
    - Microsoft Entra ID: Flat (no OUs or GPOs)
- **Management:**
    - AD DS: You manage everything, even the underlying infrastructure if deploying on Azure VMs.
    - Microsoft Entra ID: Microsoft handles the infrastructure, you focus on users, groups, and policies.