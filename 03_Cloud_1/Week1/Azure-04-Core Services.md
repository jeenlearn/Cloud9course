# Core Services



## Key Terminologies
* Resource: A  resource is the instances of service that you create like Azure Virtual Machines, Azure Storage, Azure SQL, etc that are created in the Azure for multiple purposes.

* Resource Groups: Resource Group in Azure is the way to group a number of resources that help in multiple ways like automatic monitoring, access control, etc. Another benefit of Azure is to group all the resources that belong to an application together which helps for the management of the resources easily.Resource groups are also called the central unit that acts like a logical container that holds all the Azure resources.

* Subscriptions: A subscription can define the limits of the number of resources that can be used under that plan for the particular account. A subscription can logically associate user accounts or organization accounts and the resources.
You can consider the Azure Subscription as the logical container for the Resource Groups and Resource Groups are the logical container for the Azure Resources. 
* Management Groups: Management Groups are containers for multiple subscriptions that help to manage access and compliance. All subscriptions under the management groups inherit all the properties from the Management Groups.

* Azure Resource Manager: Azure Resource Manager is the deployment and management service for Azure. It provides a management layer that enables you to create, update, and delete resources in your Azure account. You use management features, like access control, locks, and tags, to secure and organize your resources after deployment.

    ![ Scopes levels](/00_includes/Cloud/Week1/scope-levels.png)

* Virtual Machines : A virtual machine, commonly shortened to just VM, is no different than any other physical computer like a laptop, smart phone or server. It has a CPU, memory, disks to store your files and can connect to the internet if needed. While the parts that make up your computer (called hardware) are physical and tangible, VMs are often thought of as virtual computers or software-defined computers within physical servers, existing only as code.Virtualisation is the process of creating a software-based or "virtual" version of a computer, with dedicated amounts of CPU, memory and storage that are "borrowed" from a physical host computer—such as your personal computer— and/or a remote server—such as a server in a cloud provider's datacentre.

* Azure App Services : Azure App Service enables you to build and host web apps, mobile back ends, and RESTful APIs in the programming language of your choice without managing infrastructure. It offers auto-scaling and high availability, supports both Windows and Linux, and enables automated deployments from GitHub, Azure DevOps, or any Git repo.

* Azure Container Instances (ACI): Containers are becoming the preferred way to package, deploy, and manage cloud applications. Azure Container Instances offers the fastest and simplest way to run a container in Azure, without having to manage any virtual machines and without having to adopt a higher-level service.Azure Container Instances is a great solution for any scenario that can operate in isolated containers, including simple applications, task automation, and build jobs.Containers offer significant startup benefits over virtual machines (VMs). Azure Container Instances can start containers in Azure in seconds, without the need to provision and manage VMs.

* Azure Kubernetes Service (AKS) : Kubernetes is open-source orchestration software for deploying, managing and scaling containers.As applications grow to span multiple containers deployed across multiple servers, operating them becomes more complex. To manage this complexity, Kubernetes provides an open source API that controls how and where those containers will run.Kubernetes orchestrates clusters of virtual machines and schedules containers to run on those virtual machines based on their available compute resources and the resource requirements of each container. Containers are grouped into pods, the basic operational unit for Kubernetes and those pods scale to your desired state.Kubernetes also automatically manages service discovery, incorporates load balancing, tracks resource allocation and scales based on compute utilisation. And, it checks the health of individual resources and enables apps to self-heal by automatically restarting or replicating containers.

* Azure Virtual Desktop: Azure Virtual Desktop is a desktop and app virtualization service that runs on the cloud.

    Here's what you can do when you run Azure Virtual Desktop on Azure:

    Set up a multi-session Windows 11 or Windows 10 deployment that delivers a full Windows experience with scalability
    Present Microsoft 365 Apps for enterprise and optimize it to run in multi-user virtual scenarios
    Provide Windows 7 virtual desktops with free Extended Security Updates
    Bring your existing Remote Desktop Services (RDS) and Windows Server desktops and apps to any computer
    Virtualize both desktops and apps
    Manage desktops and apps from different Windows and Windows Server operating systems with a unified management experience

* Virtual Networks: Azure Virtual Network (VNet) is the fundamental building block for your private network in Azure. VNet enables many types of Azure resources, such as Azure Virtual Machines (VM), to securely communicate with each other, the internet, and on-premises networks. VNet is similar to a traditional network that you'd operate in your own data center, but brings with it additional benefits of Azure's infrastructure such as scale, availability, and isolation.

* VPN Gateway :VPN Gateway sends encrypted traffic between an Azure virtual network and an on-premises location over the public Internet. You can also use VPN Gateway to send encrypted traffic between Azure virtual networks over the Microsoft network. A VPN gateway is a specific type of virtual network gateway. Each virtual network can have only one VPN gateway. However, you can create multiple connections to the same VPN gateway. When you create multiple connections to the same VPN gateway, all VPN tunnels share the available gateway bandwidth.

* Virtual Network Peering: Virtual network peering enables you to seamlessly connect two or more Virtual Networks in Azure. The virtual networks appear as one for connectivity purposes. The traffic between virtual machines in peered virtual networks uses the Microsoft backbone infrastructure. Like traffic between virtual machines in the same network, traffic is routed through Microsoft's private network only.
The benefits of using virtual network peering, whether local or global, include:

    A low-latency, high-bandwidth connection between resources in different virtual networks.
    The ability for resources in one virtual network to communicate with resources in a different virtual network.
    The ability to transfer data between virtual networks across Azure subscriptions, Azure Active Directory tenants, deployment models, and Azure regions.
    The ability to peer virtual networks created through the Azure Resource Manager.
    The ability to peer a virtual network created through Resource Manager to one created through the classic deployment model.
    No downtime to resources in either virtual network when creating the peering, or after the peering is created.

* ExpressRoute: ExpressRoute lets you extend your on-premises networks into the Microsoft cloud over a private connection with the help of a connectivity provider. With ExpressRoute, you can establish connections to Microsoft cloud services, such as Microsoft Azure and Microsoft 365.Connectivity can be from an any-to-any (IP VPN) network, a point-to-point Ethernet network, or a virtual cross-connection through a connectivity provider at a colocation facility. ExpressRoute connections don't go over the public Internet. This allows ExpressRoute connections to offer more reliability, faster speeds, consistent latencies, and higher security than typical connections over the Internet.

* Container (Blob) Storage: Azure Blob storage is Microsoft's object storage solution for the cloud. Blob storage is optimized for storing massive amounts of unstructured data. Unstructured data is data that doesn't adhere to a particular data model or definition, such as text or binary data.

* Disk Storage : Azure managed disks are block-level storage volumes that are managed by Azure and used with Azure Virtual Machines. Managed disks are like a physical disk in an on-premises server but, virtualized. With managed disks, all you have to do is specify the disk size, the disk type, and provision the disk. Once you provision the disk, Azure handles the rest.The available types of disks are ultra disks, premium solid-state drives (SSD), standard SSDs, and standard hard disk drives (HDD). 

* File Storage: Azure Files offers fully managed file shares in the cloud that are accessible via the industry standard Server Message Block (SMB) protocol, Network File System (NFS) protocol, and Azure Files REST API. Azure file shares can be mounted concurrently by cloud or on-premises deployments. SMB Azure file shares are accessible from Windows, Linux, and macOS clients. NFS Azure file shares are accessible from Linux or macOS clients. Additionally, SMB Azure file shares can be cached on Windows servers with Azure File Sync for fast access near where the data is being used.

* Storage Tiers :Data stored in the cloud grows at an exponential pace. To manage costs for your expanding storage needs, it can be helpful to organize your data based on how frequently it will be accessed and how long it will be retained. Azure storage offers different access tiers so that you can store your blob data in the most cost-effective manner based on how it's being used. Azure Storage access tiers include:

    Hot tier - An online tier optimized for storing data that is accessed or modified frequently. The hot tier has the highest storage costs, but the lowest access costs.

    Cool tier - An online tier optimized for storing data that is infrequently accessed or modified. Data in the cool tier should be stored for a minimum of 30 days. The cool tier has lower storage costs and higher access costs compared to the hot tier.

    Archive tier - An offline tier optimized for storing data that is rarely accessed, and that has flexible latency requirements, on the order of hours. Data in the archive tier should be stored for a minimum of 180 days.

    Azure storage capacity limits are set at the account level, rather than according to access tier. You can choose to maximize your capacity usage in one tier, or to distribute capacity across two or more tiers.

* Cosmos DB :Azure Cosmos DB is a fully managed NoSQL database for modern app development. Single-digit millisecond response times, and automatic and instant scalability, guarantee speed at any scale. Business continuity is assured with SLA-backed availability and enterprise-grade security.

* Azure SQL Database : Azure SQL Database is a fully managed platform as a service (PaaS) database engine that handles most of the database management functions such as upgrading, patching, backups, and monitoring without user involvement. Azure SQL Database is always running on the latest stable version of the SQL Server database engine and patched OS with 99.99% availability. PaaS capabilities built into Azure SQL Database enable you to focus on the domain-specific database administration and optimization activities that are critical for your business.With Azure SQL Database, you can create a highly available and high-performance data storage layer for the applications and solutions in Azure. SQL Database can be the right choice for a variety of modern cloud applications because it enables you to process both relational data and non-relational structures, such as graphs, JSON, spatial, and XML.

* Azure Database for MySQL : Azure Database for MySQL is a relational database service in the Microsoft cloud based on the MySQL Community Edition (available under the GPLv2 license) database engine.Azure Database for MySQL delivers:

    - Zone redundant and same zone high availability.
    - Maximum control with ability to select your scheduled maintenance window.
    - Data protection using automatic backups and point-in-time-restore for up to 35 days.
    - Automated patching and maintenance for underlying hardware, operating system and database engine to keep the service secure and up to date.
    - Predictable performance, using inclusive pay-as-you-go pricing.
    - Elastic scaling within seconds.
    - Cost optimization controls with low cost burstable SKU and ability to stop/start server.
    - Enterprise grade security, industry-leading compliance, and privacy to protect sensitive data at-rest and in-motion.
    - Monitoring and automation to simplify management and monitoring for large-scale deployments.
    - Industry-leading support experience.
    These capabilities require almost no administration and all are provided at no additional cost. They allow you to focus on rapid app development and accelerating your time to market rather than allocating precious time and resources to managing virtual machines and infrastructure. In addition, you can continue to develop your application with the open-source tools and platform of your choice to deliver with the speed and efficiency your business demands, all without having to learn new skills.

* Azure Database for PostgreSQL: Azure Database for PostgreSQL is a relational database service in the Microsoft cloud based on the PostgreSQL open source relational database. Azure Database for PostgreSQL delivers:

    - Built-in high availability.
    - Data protection using automatic backups and point-in-time-restore for up to 35 days.
    - Automated maintenance for underlying hardware, operating system and database engine to keep the service secure and up to date.
    - Predictable performance, using inclusive pay-as-you-go pricing.
    - Elastic scaling within seconds.
    - Enterprise grade security and industry-leading compliance to protect sensitive data at-rest and in-motion.
    - Monitoring and automation to simplify management and monitoring for large-scale deployments.
    - Industry-leading support experience.

* SQL Managed Instance : Azure SQL Managed Instance is the intelligent, scalable cloud database service that combines the broadest SQL Server database engine compatibility with all the benefits of a fully managed and evergreen platform as a service. SQL Managed Instance has near 100% compatibility with the latest SQL Server (Enterprise Edition) database engine, providing a native virtual network (VNet) implementation that addresses common security concerns, and a business model favorable for existing SQL Server customers. SQL Managed Instance allows existing SQL Server customers to lift and shift their on-premises applications to the cloud with minimal application and database changes. At the same time, SQL Managed Instance preserves all PaaS capabilities (automatic patching and version updates, automated backups, high availability) that drastically reduce management overhead and TCO.

* Azure Marketplace: Azure Marketplace is an online store that contains thousands of IT software applications and services built by industry-leading technology companies. In Azure Marketplace you can find, try, buy, and deploy the software and services you need to build new solutions and manage your cloud infrastructure. The catalog includes solutions for different industries and technical areas, free trials, and also consulting services from Microsoft partners.



### Sources

* [Azure Resource Manager](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview)
* [VM](https://azure.microsoft.com/en-in/resources/cloud-computing-dictionary/what-is-a-virtual-machine/#how-do-work)
* [App Service](https://learn.microsoft.com/en-us/azure/app-service/overview)
* [Azure App Services](https://azure.microsoft.com/en-in/products/app-service/#features)
* [ Azure Contianer Instances](https://learn.microsoft.com/en-us/azure/container-instances/container-instances-overview)
* [Azure Virtual Desktop](https://learn.microsoft.com/en-us/azure/virtual-desktop/overview)
* [Virtual Networks](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-networks-overview)
* [VPN Gateway](https://learn.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-about-vpngateways)
* [Virtual Network peering](https://learn.microsoft.com/en-us/azure/virtual-network/virtual-network-peering-overview)
* [Express Route](https://learn.microsoft.com/en-us/azure/expressroute/expressroute-introduction)
* [Blob](https://learn.microsoft.com/en-us/azure/storage/blobs/storage-blobs-introduction)
* [Disk Storage](https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview)
* [File Storage](https://learn.microsoft.com/en-us/azure/storage/files/storage-files-introduction)
* [Storage Tiers](https://learn.microsoft.com/en-us/azure/storage/blobs/access-tiers-overview)
* [Cosmos DB](https://learn.microsoft.com/en-us/azure/cosmos-db/introduction)
* [Azure SQL Database](https://learn.microsoft.com/en-us/azure/azure-sql/database/sql-database-paas-overview?view=azuresql)
* [Azure Database for MySQL](https://learn.microsoft.com/en-us/azure/mysql/single-server/overview)
* [Azure Database for PostgreSQL](https://learn.microsoft.com/en-us/azure/postgresql/single-server/overview)
* [SQL Managed Instance](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/sql-managed-instance-paas-overview?view=azuresql)
* [Azure Marketplace](https://learn.microsoft.com/en-us/marketplace/azure-marketplace-overview)



### Overcome challenges

 ### Results

