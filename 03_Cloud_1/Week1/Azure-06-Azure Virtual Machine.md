# Azure Virtual Machines




## Key Terminologies




## Exercise 1
- Log in to your Azure Console.
- Create a VM with the following requirements:
    Ubuntu Server 20.04 LTS - Gen1
    Size: Standard_B1ls
    Allowed inbound ports:
    HTTP (80)
    SSH (22)
    OS Disk type: Standard SSD
    Networking: defaults
    Boot diagnostics are not required
    Custom data: 
        #!/bin/bash
    sudo su
    apt update
    apt install apache2 -y
    ufw allow 'Apache
    systemctl enable apache2
    systemctl restart apache2
- Verify that your server is working.



### Sources

* [VM](https://learn.microsoft.com/en-us/azure/virtual-machines/overview)
* [VM2](https://azure.microsoft.com/en-us/pricing/details/virtual-machines/linux/)



### Overcome challenges

 ### Results



![Vm1](/00_includes/Cloud/Week1/Azure-06/VmCreation.png)

![Vm2](/00_includes/Cloud/Week1/Azure-06/VMDeployed.png)

![DemoVM](/00_includes/Cloud/Week1/Azure-06/DemoVm.png)

![VM](/00_includes/Cloud/Week1/Azure-06/Resources.png)

![Webpage](/00_includes/Cloud/Week1/Azure-06/ApacheRunning.png)

