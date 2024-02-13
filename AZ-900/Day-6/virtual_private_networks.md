# Azure virtual private networks

- **A virtual private network (VPN) uses an encrypted tunnel within another network. VPNs are typically deployed to connect two or more trusted private networks to one another over an untrusted network (typically the public internet). Traffic is encrypted while traveling over the untrusted network to prevent eavesdropping or other attacks. VPNs can enable networks to safely and securely share sensitive information.**

## Azure VPN Gateway:

- A VPN gateway is a virtual network gateway type used in Azure.
- Azure VPN Gateway instances are deployed in a dedicated subnet within the virtual network.
- ### They facilitate various types of connectivity:
  - Site-to-site connections enable linking on-premises datacenters to virtual networks.
  - Point-to-site connections allow individual devices to connect to virtual networks.
  - Network-to-network connections connect virtual networks to each other.

## Azure VPN Gateway Features:

- Data transfer is encrypted within a private tunnel over the internet.
- One VPN gateway can be deployed per virtual network, but it can connect to multiple locations.
- Connectivity options include linking to other virtual networks or on-premises datacenters.
- VPN gateway types include policy-based and route-based, differing in traffic encryption determination.
- Authentication in Azure VPN Gateway is achieved using a pre-shared key.


## VPN Gateway Types:

- Policy-based VPN gateways statically specify IP addresses for packet encryption, evaluating each packet against defined sets.
- Route-based VPN gateways model IPSec tunnels as network interfaces, using IP routing to determine which tunnel interface to use for each packet.
- Route-based VPNs are preferred for on-premises devices due to resilience to topology changes like subnet creation.

## Use a route-based VPN gateway if you need any of the following types of connectivity:

- Connections between virtual networks.
- Point-to-site connections.
- Multisite connections.
- Coexistence with an Azure ExpressRoute gateway.

## High-availability scenarios
- If you’re configuring a VPN to keep your information safe, you also want to be sure that it’s a highly available and fault tolerant VPN configuration. There are a few ways to maximize the resiliency of your VPN gateway.

    - ### Active/standby
      - VPN gateways are deployed in an active/standby configuration by default.
      - Standby instance automatically takes over when the active instance is affected by maintenance or disruption.
      - Connections may be briefly interrupted during failover, typically restored within seconds for planned maintenance and 90 seconds for unplanned disruptions.

    - ### Active/active
      - With BGP routing protocol support, VPN gateways can be deployed in an active/active configuration.
      - Each instance is assigned a unique public IP address, and separate tunnels are created from on-premises devices to each IP address.
      - Extending high availability can be achieved by deploying an additional VPN device on-premises.

    - ### ExpressRoute failover
      - VPN gateways are deployed in an active/standby configuration by default.
      - Standby instance automatically takes over when the active instance is affected by maintenance or disruption.
      - Connections may be briefly interrupted during failover, typically restored within seconds for planned maintenance and 90 seconds for unplanned disruptions.

    - ### Zone-redundant gateways
      - VPN gateways are deployed in an active/standby configuration by default.
      - Standby instance automatically takes over when the active instance is affected by maintenance or disruption.
      - Connections may be briefly interrupted during failover, typically restored within seconds for planned maintenance and 90 seconds for unplanned disruptions.

    


