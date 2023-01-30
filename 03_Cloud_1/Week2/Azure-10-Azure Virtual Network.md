# Azure Virtual Network
Azure Virtual Network (VNet) is the fundamental building block for your private network in Azure. VNet enables many types of Azure resources, such as Azure Virtual Machines (VM), to securely communicate with each other, the internet, and on-premises networks. 


### Responsibilities of VNet
- Isolation and segmentation: Azure virtual network allows you to create multiple isolated virtual networks. When you set up a virtual network, you define a private IP address space by using either public or private IP address ranges. The IP range only exists within the virtual network and isn't internet routable. You can divide that IP address space into subnets and allocate part of the defined address space to each named subnet.

- Communicate with the internet: All resources in a VNet can communicate outbound to the internet, by default. You can communicate inbound to a resource by assigning a public IP address or a public Load Balancer. You can also use public IP or public Load Balancer to manage your outbound connections. 
- Communicate between Azure resources: Azure resources communicate securely with each other in one of the following ways:
    - Through a virtual network:You can deploy VMs, and several other types of Azure resources to a virtual network, such as Azure App Service Environments, the Azure Kubernetes Service (AKS), and Azure Virtual Machine Scale Sets. 
    - Through a virtual network service endpoint: Extend your virtual network private address space and the identity of your virtual network to Azure service resources, such as Azure Storage accounts and Azure SQL Database, over a direct connection. Service endpoints allow you to secure your critical Azure service resources to only a virtual network.
    - Through VNet Peering: You can connect virtual networks to each other, enabling resources in either virtual network to communicate with each other, using virtual network peering. The virtual networks you connect can be in the same, or different, Azure regions. 
- Communicate with on-premises resources: You can connect your on-premises computers and networks to a virtual network using any of the following options:
    - Point-to-site virtual private network (VPN): Established between a virtual network and a single computer in your network. Each computer that wants to establish connectivity with a virtual network must configure its connection.The communication between your computer and a virtual network is sent through an encrypted tunnel over the internet. 
    - Site-to-site VPN: Established between your on-premises VPN device and an Azure VPN Gateway that is deployed in a virtual network. This connection type enables any on-premises resource that you authorize to access a virtual network. The communication between your on-premises VPN device and an Azure VPN gateway is sent through an encrypted tunnel over the internet. 
    - Azure ExpressRoute: Established between your network and Azure, through an ExpressRoute partner. This connection is private. Traffic does not go over the internet.
- Filter network traffic: You can filter network traffic between subnets using either or both of the following options:

    - Network security groups: Network security groups and application security groups can contain multiple inbound and outbound security rules that enable you to filter traffic to and from resources by source and destination IP address, port, and protocol. 
    - Network virtual appliances: A network virtual appliance is a VM that performs a network function, such as a firewall, WAN optimization, or other network function. 

- Route network traffic:Azure routes traffic between subnets, connected virtual networks, on-premises networks, and the Internet, by default. You can implement either or both of the following options to override the default routes Azure creates:
    - Route tables: You can create custom route tables with routes that control where traffic is routed to for each subnet. 
    - Border gateway protocol (BGP) routes: If you connect your virtual network to your on-premises network using an Azure VPN Gateway or ExpressRoute connection, you can propagate your on-premises BGP routes to your virtual networks. 
## Key Terminologies




## Exercise 1

- Create a Virtual Network with the following requirements:
    - Region: West Europe
    - Name: Lab-VNet
    - IP range: 10.0.0.0/16
    - Requirements for subnet 1:
    - Name: Subnet-1
    - IP Range: 10.0.0.0/24
    - This subnet must not have a route to the Internet
    - Requirements for subnet 2:
    - Name: Subnet-2
    - IP Range: 10.0.1.0/24


### Sources

* [VNet](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview)
* [Routes](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-networks-udr-overview)
* [Route table](https://learn.microsoft.com/en-us/azure/virtual-network/manage-route-table)
* [Video On Routes](https://www.youtube.com/watch?v=3NttBv92sY8)



### Overcome challenges

 ### Results


Virtual Network creation with 2 subnets

![Screenshot 1](/00_includes/Cloud/Week2/Azure-10/VNetCreation.png)

Route table creation 

![Screenshot 2](/00_includes/Cloud/Week2/Azure-10/createRoutetable.png)

Adding a new route to block the internet 

![Screenshot 4](/00_includes/Cloud/Week2/Azure-10/NewRouteBlockInternet.png)


Route created 

![Screeshot 3](/00_includes/Cloud/Week2/Azure-10/Routecreated.png)


Associate the route to the subnet 1


![Screenshot 5](/00_includes/Cloud/Week2/Azure-10/AssociateRoutetoSubnet1.png)

Virtual Network with the subnets and route mentioned in the route for the subnet 1

![Screenshot 6](/00_includes/Cloud/Week2/Azure-10/Vnetwithsubnet1blockedinternet.png)

## Exercise 2


- Create a VM with the following requirements:
    - An apache server must be installed with the following custom data:
        - #!/bin/bash
        - sudo su
        - apt update
        - apt install apache2 -y
        - ufw allow 'Apache
        - systemctl enable apache2
        - systemctl restart apache2
    - No SSH access is required, HTTP is required
    - Subnet: Subnet-2
    - Public IP: Enabled
- Check if your website is reachable



### Sources

* [VM](https://learn.microsoft.com/en-us/azure/virtual-machines/overview)



### Overcome challenges

 ### Results


![Vm1](/00_includes/Cloud/Week2/Azure-10/VmCreation_subnet2_publicip.png)

![Vm1](/00_includes/Cloud/Week2/Azure-10/VMcreatedwithsubnet2.png)

![Vm1](/00_includes/Cloud/Week2/Azure-10/Natgatewaycreation.png)

![Vm1](/00_includes/Cloud/Week2/Azure-10/Effectiveroutes_VM.png)

![Vm2](/00_includes/Cloud/Week2/Azure-10/Websitereachable.png)


