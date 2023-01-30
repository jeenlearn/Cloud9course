# Azure Monitor

Azure Monitor is a service for collecting, analyzing, and acting on telemetry from your cloud and on-premises environments. IT Operations, DevOps, and developer teams use Azure Monitor to maximize the availability and performance of applications and services.

Azure Monitor provides a broad set of capabilities with a varying set of prerequisites depending on your specific monitoring goal. On one end of the spectrum, getting started with Azure Monitor metrics requires no incoming experience, because metric collection is on by default for Azure resources. Viewing metrics in Metric Explorer is straightforward in the Azure portal UI. However, when using Azure Monitor Log Analytics for trend analysis and pattern recognition, familiarity with query languages would be helpful.

## Key aspects of Azure Monitor:

Azure Monitor can collect performance and availability telemetry for all of the layers in your stack from applications, infrastructure, the Azure platform, and any custom sources you integrate.

Storage of the collected data in one of two data stores, Azure Monitor Metrics for numerical time-series values and Azure Monitor Logs for storing log data.

Azure Monitor metrics are automatically collected and stored for Azure resources, but user configuration is required to send and store resource logs in Azure Monitor Logs.

Azure Monitor includes Insights, which are out-of-the box monitoring and troubleshooting experiences for Azure resources. Available Insights include Azure Monitor VM insights, Azure Monitor application insights, and Azure Monitor container insights.

You can use Azure Monitor to visualize data with workbooks and dashboards, as well as analyze data with custom charts and analytics. Azure Monitor lets you receive notification and take automated action based on performance and availability criteria.

The following diagram gives a high-level view of Azure Monitor.

- The stores for the data platform are at the center of the diagram. Azure Monitor stores these fundamental types of data: metrics, logs, traces, and changes.
- The sources of monitoring data that populate these data stores are on the left.
- The different functions that Azure Monitor performs with this collected data are on the right. This includes such actions as analysis, alerting.
- At the bottom is a layer of integration pieces. These are actually integrated throughout other parts of the diagram, but that is too complex to show visually.

![Azure Monitor](/00_includes/Cloud/Week3/azure-monitor-overview-2022_10_15-add-prometheus-opt.svg)

## Application Insights
Application Insights monitors the availability, performance, and usage of your web applications whether they're hosted in the cloud or on-premises. It takes advantage of the powerful data analysis platform in Azure Monitor to provide you with deep insights into your application's operations
## Container insights
Container insights monitors the performance of container workloads that are deployed to managed Kubernetes clusters hosted on Azure Kubernetes Service. It gives you performance visibility by collecting metrics from controllers, nodes, and containers that are available in Kubernetes through the Metrics API.
## VM insights
VM insights monitors your Azure VMs at scale. It analyzes the performance and health of your Windows and Linux VMs and identifies their different processes and interconnected dependencies on external processes. 

## Azure Monitor metrics

Azure Monitor Metrics is a feature of Azure Monitor that collects numeric data from monitored resources into a time series database. You can use this information to evaluate the performance of your hosted services. You can view the metrics in graphs on the Azure portal, and you can evaluate the metrics data by understanding its data structure. 

## Azure Monitor agents

Virtual machines and other compute resources require an agent to collect the monitoring data required to measure the performance and availability of their guest operating system and workloads. The Azure Monitor agent (AMA) collects monitoring data from the guest operating system of virtual machines and delivers it to Azure Monitor.

The Azure Monitor agent has replaced the Log Analytics agent, the diagnostic extension, and the Telegraf agent.

## Azure Monitor logs

Azure Monitor Logs is a feature of Azure Monitor that collects and organizes log and performance data from monitored resources. Data can come from various sources such as:

Platform logs for Azure services
Virtual machine agents
Application performance and usage data from Azure Monitor application insights
You can consolidate all of this data into a workspace for analysis. This workspace is a Log Analytics workspace. You must configure this workspace initially, then configure the different sources to send their data to the workspace. Unlike metrics, this data is not automatically collected.

![Logs](/00_includes/Cloud/Week3/logs-overview.png)

## Key Terminologies



## Exercise 1



### Sources

* [Azure Monitor](https://learn.microsoft.com/en-us/training/modules/intro-to-azure-monitor/)
* [Azure Monitor Documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/)





### Overcome challenges



### Results

![Monitor](/00_includes/Cloud/Week3/Monitor/Monitoring1.png)

![Monitor](/00_includes/Cloud/Week3/Monitor/Activitylog.png)


![Monitor](/00_includes/Cloud/Week3/Monitor/Createmetricsrule.png)

![Monitor](/00_includes/Cloud/Week3/Monitor/Alertrule.png)

![Monitor](/00_includes/Cloud/Week3/Monitor/createactiongp.png)

![Monitor](/00_includes/Cloud/Week3/Monitor/Createactiongroup2.png)


![Monitor](/00_includes/Cloud/Week3/Monitor/Insights.png)



