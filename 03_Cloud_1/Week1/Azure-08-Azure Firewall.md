# Azure Firewall
Azure Firewall is a cloud-native and intelligent network firewall security service that provides the best of breed threat protection for your cloud workloads running in Azure. It's a fully stateful, firewall as a service with built-in high availability and unrestricted cloud scalability. It provides both east-west and north-south traffic inspection.

## Key Terminologies



## Exercise 1

- Power up a web server. Make sure the ports for both SSH and HTTP are open.
- Create an Azure Firewall in VNET. Make sure your web server is still reachable via HTTP, but SSH is blocked.




### Sources

*[Azure Firewall](https://learn.microsoft.com/en-us/azure/firewall/tutorial-firewall-deploy-portal-policy)





### Overcome challenges



### Results

![Firewall](/00_includes/Cloud/Week1/Azure-08/Resourcegp.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/vnet.png)


![Firewall](/00_includes/Cloud/Week1/Azure-08/subnets.png)


![Firewall](/00_includes/Cloud/Week1/Azure-08/vm.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/firewall.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/firewall-route.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/firewallrules.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/natrule.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/networkrule1.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/networkrule2.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/Webserver.png)

![Firewall](/00_includes/Cloud/Week1/Azure-08/SSHConnectionTimedout.png)




