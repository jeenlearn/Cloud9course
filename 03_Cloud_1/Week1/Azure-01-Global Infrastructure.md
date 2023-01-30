# Azure Global Infrastructure

Azure global infrastructure is made up of two key components—physical infrastructure and connective network components. The physical component is comprised of 200+ physical datacenters, arranged into regions, and linked by one of the largest interconnected networks on the planet.


## Key Terminologies

* Azure Datacenter -Azure datacenters are unique physical buildings—located all over the globe—that house a group of networked computer servers.
* Azure Geography - An Azure geography is a discrete market, typically containing at least one or more regions, that preserves data residency and compliance boundaries. Geographies allow customers with specific data-residency and compliance needs to keep their data and applications close. Geographies are fault-tolerant to withstand complete region failure through their connection to the dedicated high-capacity networking infrastructure of Azure.



## Exercise 1

- What is an Azure Region?
- What is an Azure Availability Zone?
- What is an Azure Region Pair?
- Why choose one region over another?





### Sources

* [Global Infrastructure](https://azure.microsoft.com/en-us/explore/global-infrastructure/)
* [Building blocks](https://infrastructuremap.microsoft.com/the-building-blocks-of-azure)
* [Availability zones](https://azure.microsoft.com/en-us/explore/global-infrastructure/availability-zones/#related)

* [Availability zones 2](https://learn.microsoft.com/en-us/azure/availability-zones/az-overview)
* [Cross region replication](https://learn.microsoft.com/en-us/azure/availability-zones/cross-region-replication-azure)

* [Azure region pairs](https://build5nines.com/azure-region-pairs-explained/)

* [Chossing region ](https://about-azure.com/things-you-may-consider-when-choosing-a-microsoft-azure-region/)

* [Choose Region](https://azure.microsoft.com/en-us/explore/global-infrastructure/geographies/#choose-your-region)


### Overcome challenges

 ### Results

#### Question 1
An Azure region is a set of datacenters, deployed within a latency-defined perimeter and connected through a dedicated regional low-latency network.

With more global regions than any other cloud provider, Azure gives customers the flexibility to deploy applications where they need. An Azure region has discrete pricing and service availability.


#### Question 2

Azure Availability Zones are unique physical locations within an Azure region and offer high availability to protect your applications and data from datacenter failures. Each zone is made up of one or more datacenters equipped with independent power, cooling, and networking.

The physical separation of availability zones within a region protects apps and data from facility-level issues. Zone-redundant services replicate your apps and data across Azure Availability Zones to protect from single points of failure.
The latency perimeter of availability zones is less than 2  milliseconds.The data traversing between or with in regions is encrypted.

![ Availability zone](/00_includes/Cloud/Week1/availability-zones.png)

#### Question 3

An Azure Region Pair is a relationship between 2 Azure Regions within the same geographic region for disaster recovery purposes. If one of the regions were to experience a disaster or failure, then the services in that region will automatically failover to that regions secondary region in the pair. For example, North Central US region’s pair is South Central US.
Each Azure Region in a pair are always located greater than 300 miles apart when possible.Region pairs are static , cannot be chosen.Each region pairs resides in the same geography(except Brazil south)

Benefits of cross-region replication:

- Region recovery sequence:
- Sequential updating:
- Physical isolation
- Data residency


#### Question 4

While choosing a region in Azure several points have to be considered.

- Not all services are available in all regions

    You have to ensure all resources you want to deploy are available within the desired region. 
- Prices vary by region

    Not all Azure Regions have the same pricing for the same resources. While most of the time you are looking for the closest Azure Region to your company / customers, you may consider choosing another Region due to the lower pricing model. 
- Latency from your customer to the Azure datacenter

    For performance reason you want to choose the Azure region with the least latency to your company / customers. 
- Location of your customer data (data residency)

    You may have specific compliance or data-residency requirements that will force you to use a specific region. 
