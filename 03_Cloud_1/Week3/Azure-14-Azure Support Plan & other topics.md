# Azure Containers

A standard package of software—known as a container—bundles an application’s code together with the related configuration files and libraries, and with the dependencies required for the app to run. This allows developers and IT pros to deploy applications seamlessly across environments.

Containers address this problem by providing a lightweight, immutable infrastructure for application packaging and deployment. An application or service, its dependencies, and its configuration are packaged together as a container image. The containerized application can be tested as a unit and deployed as a container image instance to the host operating system.


## Container vs. virtual machine

At a high level, VMs virtualize the underlying hardware so that multiple operating system (OS) instances can run on the hardware. Each VM runs an OS and has access to virtualized resources representing the underlying hardware.

![Image](/00_includes/Cloud/Week3/what-is-a-container_valprop1.svg)

A container virtualizes the underlying OS and causes the containerized app to perceive that it has the OS—including CPU, memory, file storage, and network connections—all to itself. Because the differences in underlying OS and infrastructure are abstracted, as long as the base image is consistent, the container can be deployed and run anywhere. For developers, this is incredibly attractive.

![Image](/00_includes/Cloud/Week3/what-is-a-container_valprop2.svg)


## Kubernetes

Kubernetes is open-source orchestration software for deploying, managing, and scaling containers.
Kubernetes orchestrates clusters of virtual machines and schedules containers to run on those virtual machines based on their available compute resources and the resource requirements of each container. Containers are grouped into pods, the basic operational unit for Kubernetes, and those pods scale to your desired state.

Kubernetes also automatically manages service discovery, incorporates load balancing, tracks resource allocation, and scales based on compute utilization. And, it checks the health of individual resources and enables apps to self-heal by automatically restarting or replicating containers.

## Azure Container Instances
 Azure Container Instances offers the fastest and simplest way to run a container in Azure, without having to manage any virtual machines and without having to adopt a higher-level service.Azure Container Instances is a great solution for any scenario that can operate in isolated containers, including simple applications, task automation, and build jobs. For scenarios where you need full container orchestration, including service discovery across multiple containers, automatic scaling, and coordinated application upgrades, we recommend Azure Kubernetes Service (AKS). 

# Azure Support Plan
Azure offers various support plan and you can choose the one that fits your needs best.

## Support plans offered:

- Basic :
    - Included for all Azure customers
    - Can submit as many support tickets as needed and support Azure Advisor
    - 24/7 self help resources included
- Developer:
    - USD$29 per month
    - Trial and non-production environments
    -  Can submit as many support tickets as needed and support Azure Advisor
    - Third party software support
    - 24/7 access to technical support by email during business hours
    - Response time Sev-c with in 8 business hours
    - Architecture support- general guidance
- Standard:
    - USD$100 per month
    - Production workload environments
    - Can submit as many support tickets as needed and support Azure Advisor
    - Third party software support
    - 24/7 access to technical support by email or phone.
    - Response time Sev-c with in 8 business hours, Sev-B with in 4 hours,  Sev-A with in 1 hour
    - Architecture support- general guidance
- Professional Direct:
    - USD$1,000 per month
    - Business-critical dependence
    - Can submit as many support tickets as needed and support Azure Advisor
    - Third party software support
    - 24/7 access to technical support by email or phone.
    - Response time Sev-c with in 4 business hours, Sev-B with in 2 hours,  Sev-A with in 1 hour
    - Architecture support-  guidance from prodirect delivery managers
    - Suport API- Create and manage Azure support tickets programmatically
    - Operations Support- Service reviews and advisory consultation from a pool of ProDirect delivery managers are non-transferable and limited to Azure ProDirect customers only
    - Trainings- Webinars led by Azure experts
    - Proactive guidance

# Azure Advisor

Advisor is a personalized cloud consultant that helps you follow best practices to optimize your Azure deployments. It analyzes your resource configuration and usage telemetry and then recommends solutions that can help you improve the cost effectiveness, performance, Reliability (formerly called High availability), and security of your Azure resources.

## Cost
Azure Advisor helps you optimize and reduce your overall Azure spend by identifying idle and underutilized resources. You can get cost recommendations from the Cost tab on the Advisor dashboard.

## Operational excellence:
Operational excellence recommendations in Azure Advisor can help you with:
- Process and workflow efficiency.
- Resource manageability.
- Deployment best practices.
## Performance
The performance recommendations in Azure Advisor can help improve the speed and responsiveness of your business-critical applications. 
## Reliability
Azure Advisor helps you ensure and improve the continuity of your business-critical applications. 
## Security
Advisor helps to detect threats and vulnerabilities that might lead to security breaches. 

# Azure App Configuration
Azure App Configuration provides a service to centrally manage application settings and feature flags. Modern programs, especially programs running in a cloud, generally have many components that are distributed in nature. Spreading configuration settings across these components can lead to hard-to-troubleshoot errors during an application deployment. Use App Configuration to store all the settings for your application and secure their accesses in one place.

## Why Use App Configuration

Cloud-based applications often run on multiple virtual machines or containers in multiple regions and use multiple external services. Creating a robust and scalable application in a distributed environment presents a significant challenge.

While any application can make use of App Configuration, the following examples are the types of application that benefit from the use of it:

- Microservices based on Azure Kubernetes Service, Azure Service Fabric, or other containerized apps deployed in one or more geographies
- Serverless apps, which include Azure Functions or other event-driven stateless compute apps
- Continuous deployment pipeline

App Configuration offers the following benefits:

- A fully managed service that can be set up in minutes
- Flexible key representations and mappings
- Tagging with labels
- Point-in-time replay of settings
- Dedicated UI for feature flag management
- Comparison of two sets of configurations on custom-defined dimensions
- Enhanced security through Azure-managed identities
- Encryption of sensitive information at rest and in transit
- Native integration with popular frameworks
- App Configuration complements Azure Key Vault, which is used to store application secrets. 

App Configuration makes it easier to implement the following scenarios:

- Centralize management and distribution of hierarchical configuration data for different environments and geographies
- Dynamically change application settings without the need to redeploy or restart an application
- Control feature availability in real-time

The easiest way to add an App Configuration store to your application is through a client library provided by Microsoft. 

App Configuration is designed to store any configuration data that you would normally save in configuration files or environment variables. However, some types of data may be better suited to reside in other sources.For example, store secrets in Key Vault, files in Azure Storage, membership information in Azure AD groups, or customer lists in a database.

## Keys and values
Azure App Configuration stores configuration data as key-values. Key-values are a simple and flexible representation of application settings used by developers.

Keys serve as identifiers for key-values and are used to store and retrieve corresponding values. It's a common practice to organize keys into a hierarchical namespace by using a character delimiter, such as / or :. 

Label keys:

Key-values in App Configuration can optionally have a label attribute. Labels are used to differentiate key-values with the same key. A key app1 with labels A and B forms two separate keys in an App Configuration store. By default, a key-value has no label.

Point-in-time snapshot:

Azure App Configuration maintains a record of changes made to key-values. This record provides a timeline of key-value changes. You can reconstruct the history of any key and provide its past value at any moment within the key history period (7 days for Free tier stores, or 30 days for Standard tier stores). Using this feature, you can “time-travel” backward and retrieve an old key-value. For example, you can recover configuration settings used before the most recent deployment in order to roll back the application to the previous configuration.

# Azure Activity Log
The Azure Monitor activity log is a platform log in Azure that provides insight into subscription-level events. The activity log includes information like when a resource is modified or a virtual machine is started. You can view the activity log in the Azure portal or retrieve entries with PowerShell and the Azure CLI

Activity log events are retained in Azure for 90 days and then deleted. There's no charge for entries during this time regardless of volume. For more functionality, such as longer retention, create a diagnostic setting and route the entries to another location based on your needs. 
Entries in the Activity Log are system generated and can't be changed or deleted.
Entries in the Activity Log are representing control plane changes like a virtual machine restart, any non related entries should be written into Azure Resource Logs.

Methods to retrieve activity log events:

- The Get-AzLog cmdlet retrieve Activity Log events. The events can be associated with the current subscription ID, correlation ID, resource group, resource ID, or resource provider.

- Use az monitor activity-log to retrieve the activity log from the CLI.

- Use the Azure Monitor REST API to retrieve the activity log from a REST client.


## Activity log insights
Activity log insights let you view information about changes to resources and resource groups in a subscription. The dashboards also present data about which users or services performed activities in the subscription and the activities' status.
## Azure Log Analytics
Azure Log Analytics is the tool in the Azure portal where you’ll write and run log queries on the data gathered by Azure Monitor. Log Analytics is a robust tool that supports both simple, complex queries, and data analysis. You can write a simple query that returns a set of records and then use features of Log Analytics to sort, filter, and analyze the records. You can write an advanced query to perform statistical analysis and visualize the results in a chart to identify a particular trend. Whether you work with the results of your queries interactively or use them with other Azure Monitor features such as log query alerts or workbooks, Log Analytics is the tool that you're going to use to write and test those queries.
Send the activity log to a Log Analytics workspace to enable the Azure Monitor Logs feature,Activity log data in a Log Analytics workspace is stored in a table called AzureActivity that you can retrieve with a log query in Log Analytics. 
## Key Terminologies



## Exercise 1


### Sources

* [Azure Support Plan](https://azure.microsoft.com/en-au/support/plans/)
* [Azure Advisor](https://learn.microsoft.com/en-us/azure/advisor/)
* [Azure App Configuration](https://learn.microsoft.com/en-us/azure/azure-app-configuration/overview)
* [App Configuration](https://azure.microsoft.com/en-us/products/app-configuration/#features)
* [Container Instances](https://learn.microsoft.com/en-in/azure/container-instances/container-instances-overview)
* [ Kubernetes](https://learn.microsoft.com/en-us/azure/aks/intro-kubernetes)
* [Containers ](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-a-container/#tabx85d2e5d02fb54a60978beae440013314)
* [Kubernetes Explained](https://azure.microsoft.com/en-us/resources/cloud-computing-dictionary/what-is-kubernetes/#overview)
* [Activity Log](https://learn.microsoft.com/en-us/azure/azure-monitor/essentials/activity-log?tabs=powershell)




### Overcome challenges

### Results


