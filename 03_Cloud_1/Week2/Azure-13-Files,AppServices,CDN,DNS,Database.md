# Files,AppServices,CDN,DNS,Database

## Azure Files:

Azure Files offers fully managed file shares in the cloud that are accessible via the industry standard Server Message Block (SMB) protocol, Network File System (NFS) protocol, and Azure Files REST API. Azure file shares can be mounted concurrently by cloud or on-premises deployments. SMB Azure file shares are accessible from Windows, Linux, and macOS clients. NFS Azure file shares are accessible from Linux or macOS clients. Additionally, SMB Azure file shares can be cached on Windows servers with Azure File Sync for fast access near where the data is being used.

### Why Azure Files is useful
Azure file shares can be used to:

- Replace or supplement on-premises file servers:

    Azure Files can be used to replace or supplement traditional on-premises file servers or network-attached storage (NAS) devices. Popular operating systems such as Windows, macOS, and Linux can directly mount Azure file shares wherever they are in the world. SMB Azure file shares can also be replicated with Azure File Sync to Windows servers, either on-premises or in the cloud, for performance and distributed caching of the data. With Azure Files AD Authentication, SMB Azure file shares can work with Active Directory Domain Services (AD DS) hosted on-premises for access control.

- "Lift and shift" applications:
    Azure Files makes it easy to "lift and shift" applications to the cloud that expect a file share to store file application or user data. Azure Files enables both the "classic" lift and shift scenario, where both the application and its data are moved to Azure, and the "hybrid" lift and shift scenario, where the application data is moved to Azure Files, and the application continues to run on-premises.

- Simplify cloud development:
    Azure Files can also be used to simplify new cloud development projects. For example:
    - Shared application settings:
    - Diagnostic share:
    - Dev/Test/Debug:
- Containerization:
    Azure file shares can be used as persistent volumes for stateful containers. Containers deliver "build once, run anywhere" capabilities that enable developers to accelerate innovation. For the containers that access raw data at every start, a shared file system is required to allow these containers to access the file system no matter which instance they run on.


## Azure SQL Database:

Azure SQL Database is a fully managed platform as a service (PaaS) database engine that handles most of the database management functions such as upgrading, patching, backups, and monitoring without user involvement.

Features: 

- Single Database or Elastic pool
- Hyperscale storage
- Serverless Compute
- Fully managed service
- Private link support
- High Availability


## Azure SQL Managed Instance

Azure SQL Managed Instance is the intelligent, scalable cloud database service that combines the broadest SQL Server database engine compatibility with all the benefits of a fully managed and evergreen platform as a service. SQL Managed Instance has near 100% compatibility with the latest SQL Server (Enterprise Edition) database engine, providing a native virtual network (VNet) implementation that addresses common security concerns, and a business model favorable for existing SQL Server customers. SQL Managed Instance allows existing SQL Server customers to lift and shift their on-premises applications to the cloud with minimal application and database changes. At the same time, SQL Managed Instance preserves all PaaS capabilities (automatic patching and version updates, automated backups, high availability) that drastically reduce management overhead and TCO.

![Diagram](/00_includes/Cloud/Week2/Azure-13/AzureSQL/key-features.png)

## Azure App Service:

Azure App Service is an HTTP-based service for hosting web applications, REST APIs, and mobile back ends. You can develop in your favorite language, be it .NET, .NET Core, Java, Ruby, Node.js, PHP, or Python. Applications run and scale with ease on both Windows and Linux-based environments.

App Service not only adds the power of Microsoft Azure to your application, such as security, load balancing, autoscaling, and automated management. You can also take advantage of its DevOps capabilities, such as continuous deployment from Azure DevOps, GitHub, Docker Hub, and other sources, package management, staging environments, custom domain, and TLS/SSL certificates.

With App Service, you pay for the Azure compute resources you use. The compute resources you use are determined by the App Service plan that you run your apps on.


## Content Delivery Network:

A content delivery network (CDN) is a distributed network of servers that can efficiently deliver web content to users. CDNs store cached content on edge servers in point-of-presence (POP) locations that are close to end users, to minimize latency.

Azure Content Delivery Network (CDN) offers developers a global solution for rapidly delivering high-bandwidth content to users by caching their content at strategically placed physical nodes across the world. Azure CDN can also accelerate dynamic content, which cannot be cached, by leveraging various network optimizations using CDN POPs. For example, route optimization to bypass Border Gateway Protocol (BGP).

The benefits of using Azure CDN to deliver web site assets include:

- Better performance and improved user experience for end users, especially when using applications in which multiple round-trips are required to load content.
- Large scaling to better handle instantaneous high loads, such as the start of a product launch event.
- Distribution of user requests and serving of content directly from edge servers so that less traffic is sent to the origin server.

### Azure CDN features
Azure CDN offers the following key features:

- Dynamic site acceleration
- CDN caching rules
- HTTPS custom domain support
- Azure diagnostics logs
- File compression
- Geo-filtering

## Azure Front Door

Whether you’re delivering content and files or building global apps and APIs, Azure Front Door can help you deliver higher availability, lower latency, greater scale, and more secure experiences to your users wherever they are.

Azure Front Door is Microsoft’s modern cloud Content Delivery Network (CDN) that provides fast, reliable, and secure access between your users and your applications’ static and dynamic web content across the globe. Azure Front Door delivers your content using the Microsoft’s global edge network with hundreds of global and local POPs distributed around the world close to both your enterprise and consumer end users.

## Azure DNS

Azure DNS is a hosting service for DNS domains that provides name resolution by using Microsoft Azure infrastructure. By hosting your domains in Azure, you can manage your DNS records by using the same credentials, APIs, tools, and billing as your other Azure services.

You can't use Azure DNS to buy a domain name. For an annual fee, you can buy a domain name by using App Service domains or a third-party domain name registrar. Your domains then can be hosted in Azure DNS for record management.
## Key Terminologies



## Exercise 1

- Azure file share creation and uploading a file 



### Sources

* [Azure Files](https://learn.microsoft.com/en-us/azure/storage/files/storage-files-introduction)

* [App service](https://learn.microsoft.com/en-us/azure/app-service/)



### Overcome challenges

### Results

![Storage account](/00_includes/Cloud/Week2/Azure-13/AzureFiles/Storageaccount.png)

![Storage account](/00_includes/Cloud/Week2/Azure-13/AzureFiles/filesharecreation.png)


![Storage account](/00_includes/Cloud/Week2/Azure-13/AzureFiles/Adddirectory.png)


![Storage account](/00_includes/Cloud/Week2/Azure-13/AzureFiles/Uploadfile.png)


![Storage account](/00_includes/Cloud/Week2/Azure-13/AzureFiles/Downloadlink.png)


## Exercise 2

- Azure SQL Database 
    -create a DB with single database and use the sample DB and query using the query editor



### Sources

*  [Azure SQL](https://learn.microsoft.com/en-us/azure/azure-sql/database/sql-database-paas-overview?view=azuresql)

* [Creating SQL DB](https://learn.microsoft.com/en-us/azure/azure-sql/database/single-database-create-quickstart?view=azuresql&tabs=azure-portal)



### Overcome challenges

### Results

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/SQLDatabaseselection.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/ConfigureDB.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/servername.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/networking1.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/Networking2.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/Additionalsettings.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/CreatingDB.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/DBcreated.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/QueryEditior.png)

![SQLDB](/00_includes/Cloud/Week2/Azure-13/AzureSQL/QuerySampleDB.png)

## Exercise 3

- Azure SQL Managed Instance 
    

### Sources

* [Azure SQL Managed Instance](https://learn.microsoft.com/en-us/azure/azure-sql/managed-instance/sql-managed-instance-paas-overview?view=azuresql)





### Overcome challenges

### Results

Creation of SQL Managed Instance

![Managed Instance](/00_includes/Cloud/Week2/Azure-13/AzureSQlManaged/ManagedInstance.png)

![Managed Instance](/00_includes/Cloud/Week2/Azure-13/AzureSQlManaged/CreatingMI.png)


## Exercise 4

- Azure SQL Database connected to a VM via private end point

1. Create a Virtual Network (“VNet1”) and a subnet “snet-vm”
2. Create a VM and associate it to snet-vm
3. Create a SQL server and a SQL Database with sample data
4. Connect to the SQL database 
5. Add a new subnet called “snet-pvt-endpoint”
6. Create a Private End point and associate it to snet-pvt-endpoint 
7. Configure the SQL Server to use the private end point  (By doing this access to SQL server is limited to VNet1)
8. Disable the public connectivity to SQL Server
9. Now RDP connect to VM and use S/W application to connect to SQL database
    

### Sources

* [Azure SQL Database video](https://www.youtube.com/watch?v=4VAMDlK-3Vw)





### Overcome challenges

### Results

Virtual network created with a subnet

![SQl DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/Vnetcreation.png)


 Virtual machine creation with vnet connected

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/Vmcreation.png)

Creation of SQl DB. Create SQl server.

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/sqlserver.png)

Public access point made active .This makes the database accessible via the internet. But in a secure environment , we shouldnot give this public access.

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/SQLPublicaccesspoint.png)

DB Created.

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/SQLDBcreated.png)

For connecting to the database you need to add teh client ip address (you machines ip address ) in the networking details of the SQL server

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/SQLServer%2BAddclientIP.png)

Query the DB 

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/QuerytheDB.png)

Create a new subnet to connect to the Database

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/Addnewsubnet.png)

Choose the new subnet while creating the private end point. The private end point is used to connect the DB to the VM.

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/Choosenewsubnetcreated.png)

Private End point creation

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/Privateendpointcreation.png)


![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/SQLDBPrivateEndpointCreated.png)


Disable the public access point to disable the internet access.

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/DisablepublicaccesonSQL.png)


Remote Desktop Connection to connect to your VM

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/RDPVM.png)

You can install the Sql Server Management Console on the VM to access the SQL DB from the VM

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/SQLAccessFromVM.png)

Query the DB from the SSMStudio

![SQL DB](/00_includes/Cloud/Week2/Azure-13/AzureSQL_VM/QueryDBfromVM.png)


