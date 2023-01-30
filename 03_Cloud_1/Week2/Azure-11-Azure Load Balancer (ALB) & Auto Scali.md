# Azure Load Balancer (ALB) & Auto Scaling
Azure virtual machine scale sets let you create and manage a group of load balanced VMs. The number of VM instances can automatically increase or decrease in response to demand or a defined schedule. Scale sets provide the following key benefits:

- Easy to create and manage multiple VMs
- Provides high availability and application resiliency by distributing VMs across availability zones or fault domains
- Allows your application to automatically scale as resource demand changes
- Works at large-scale
## Orchestration modes:
- Scale sets with Uniform orchestration: Optimized for large-scale stateless workloads with identical instances.Virtual machine scale sets with Uniform orchestration use a virtual machine profile or template to scale up to desired capacity. While there is some ability to manage or customize individual virtual machine instances, Uniform uses identical VM instances.
- Scale sets with Flexible orchestration: Achieve high availability at scale with identical or multiple virtual machine types.
## Autoscaling:
An Azure virtual machine scale set can automatically increase or decrease the number of VM instances that run your application. This automated and elastic behavior reduces the management overhead to monitor and optimize the performance of your application. You create rules that define the acceptable performance for a positive customer experience. When those defined thresholds are met, autoscale rules take action to adjust the capacity of your scale set. You can also schedule events to automatically increase or decrease the capacity of your scale set at fixed times.
## Key Terminologies




## Exercise 1

- Create a Virtual Machine Scale Set with the following requirements:
    - Ubuntu Server 20.04 LTS - Gen1
    - Size: Standard_B1ls
    - Allowed inbound ports:
        SSH (22)
        HTTP (80)
    - OS Disk type: Standard SSD
    - Networking: defaults
    - Boot diagnostics are not required
    - Custom data: 
        #!/bin/bash
        sudo su
        apt update
        apt install apache2 -y
        ufw allow 'Apache
        systemctl enable apache2
        systemctl restart apache2
    - Initial Instance Count: 2
    - Scaling Policy: Custom
    - Number of VMs: minimum 1 and maximum 4
    - Add a VM at 75% CPU utilization
    - Remove a VM at 30% CPU utilization



### Sources

* [VMSS](https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/overview)



### Overcome challenges

 ### Results

 Create a Virtual machine scale set .In the networking tab ,allow the inbound ports.

![Vmss](/00_includes/Cloud/Week2/Azure-11/Network.png)

Select Loadbalancer to allow the vms to be distribute the load on the vms.


![Vmss](/00_includes/Cloud/Week2/Azure-11/loadbalancer.png)

In the scaling tab make the custom scale option and give the values in scale out and scale in.

![Vmss](/00_includes/Cloud/Week2/Azure-11/scaleset.png)

In the custom data give the script to create a Apache webserver.

![Vmss](/00_includes/Cloud/Week2/Azure-11/customdata.png)

Create the Virtual machine scale set.

![Vmss](/00_includes/Cloud/Week2/Azure-11/VMSScreation.png)

![Vmss](/00_includes/Cloud/Week2/Azure-11/VMss.png)



## Exercise 2


- Verify that you can access the web server through the endpoint of your load balancer.
- Run a load test on your server(s) to enable auto scaling. There may be a delay in creating new VMs, depending on the settings in your VM Scale Set.



### Sources

* [VMSS](https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/overview)


* [Stress test](https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/tutorial-autoscale-cli)

### Overcome challenges

 ### Results

From the load balance front end, you can pick the ip address to check that the webserver is up and running.

![Vm1](/00_includes/Cloud/Week2/Azure-11/LBfrontend.png)

The web page appears with the load balance ip address.

![Vm2](/00_includes/Cloud/Week2/Azure-11/WebpageusingLBfeip.png)

During the initial set up the vm instance created are 2 as there was more activity.

![Vm2](/00_includes/Cloud/Week2/Azure-11/Initialscaleset.png)

Once the activity reduces , one of the instance got deleted.

![Vm2](/00_includes/Cloud/Week2/Azure-11/Oneinstancedeleting.png)

Only 1 vm was left running.

![Vm2](/00_includes/Cloud/Week2/Azure-11/scaledown.png)

Open that vm instance using SSH and to create stress load, run the following script 

- sudo apt-get update
- sudo apt-get -y install stress
- sudo stress --cpu 10 --timeout 420 &

This will install the stress utility. Start 10 stress workers that generate CPU load. These workers run for 420 seconds, which is enough to cause the autoscale rules to implement the desired action.
When stress shows output similar to stress: info: [2688] dispatching hogs: 10 cpu, 0 io, 0 vm, 0 hdd, press the Enter key to return to the prompt.

To confirm that stress generates CPU load, examine the active system load with the top utility:

The vm instances will increase as shown in the screen shot below:

![Vm2](/00_includes/Cloud/Week2/Azure-11/stresstest.png)


Once the stress load reduces again one of the vm instance get deleted. You can notice that vmss-demo-1 is deleted now.

![Vm2](/00_includes/Cloud/Week2/Azure-11/Onemoredeletedafterstresstest.png)




