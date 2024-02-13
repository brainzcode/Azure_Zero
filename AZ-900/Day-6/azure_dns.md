# Azure DNS

- Azure DNS is a hosting service for DNS domains that provides name resolution by using Microsoft Azure infrastructure. By hosting your domains in Azure, you can manage your DNS records using the same credentials, APIs, tools, and billing as your other Azure services.


## Benefits of Azure DNS
- Azure DNS leverages the scope and scale of Microsoft Azure to provide numerous benefits, including:

    - Reliability and performance
    - Security
    - Ease of Use
    - Customizable virtual networks
    - Alias records

    - ### Reliability and performance
      - DNS domains in Azure DNS are hosted on Azure's global network of DNS name servers, providing resiliency and high availability. Azure DNS uses anycast networking, so each DNS query is answered by the closest available DNS server to provide fast performance and high availability for your domain.

    - ### Security
        - **Azure DNS is based on Azure Resource Manager, which provides features such as:**

            - Azure role-based access control (Azure RBAC) to control who has access to specific actions for your organization.
            - Activity logs to monitor how a user in your organization modified a resource or to find an error when troubleshooting.
            - Resource locking to lock a subscription, resource group, or resource. Locking prevents other users in your organization from accidentally deleting or modifying critical resources.

    - ### Azure DNS Features:

      - Azure DNS manages DNS records for Azure services and external resources.
      - Integrated with Azure portal, Azure PowerShell cmdlets, and Azure CLI for management.
      - Utilizes the same credentials, support contract, and billing as other Azure services.
      - Supports automated DNS management via REST API and SDKs for applications.

    - ### Customizable virtual networks with private domains
        - Azure DNS also supports private DNS domains. This feature allows you to use your own custom domain names in your private virtual networks, rather than being stuck with the Azure-provided names.

    - ### Azure DNS Alias Record Sets:

        - Supports alias record sets to refer to Azure resources like public IP addresses, Traffic Manager profiles, or CDN endpoints.
        - Automatically updates during DNS resolution if the IP address of the underlying resource changes.
        - Alias record set points to the service instance, which is associated with an IP address.


## NOTE:

- ## You can't use Azure DNS to buy a domain name. For an annual fee, you can buy a domain name by using App Service domains or a third-party domain name registrar. Once purchased, your domains can be hosted in Azure DNS for record management.



