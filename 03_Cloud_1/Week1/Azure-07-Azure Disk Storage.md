# Azure Disk Storage

Azure Disk Storage can be thought of as a virtual hard drive in the cloud. A disk can be an OS disk (where the OS resides) or a Data Disk (similar to an external hard drive).


## Key Terminologies




## Exercise 1
- Start 2 Linux VMs and make sure you can access both via SSH.
- Create an Azure Managed Disk and mount it to both VMs at the same time.
- On your first machine, create a file and place it on the Shared Disk.
- On the second machine, see if you can read the file.
- Take a snapshot of the disk and try to create a new Disk with it
- Mount this new Disk and view the file. 





### Sources

* [Disk Storage (https://learn.microsoft.com/en-us/azure/virtual-machines/managed-disks-overview)


### Overcome challenges

 ### Results

![Shared Disk](/00_includes/Cloud/Week1/Azure-07/SharedDiskCreated.png)

![Vm1](/00_includes/Cloud/Week1/Azure-07/VM1.png)

![Vm2](/00_includes/Cloud/Week1/Azure-07/VM2.png)

![Mount](/00_includes/Cloud/Week1/Azure-07/mount.png)

![Mount2](/00_includes/Cloud/Week1/Azure-07/mount2.png)

![FileCreated](/00_includes/Cloud/Week1/Azure-07/file%20created.png)

![Filenotfound](/00_includes/Cloud/Week1/Azure-07/Vm2NoFile.png)

![Snapshot](/00_includes/Cloud/Week1/Azure-07/Snapshot.png)

![Newdisk](/00_includes/Cloud/Week1/Azure-07/Newdisk.png)

![FileinVm](/00_includes/Cloud/Week1/Azure-07/FileinVm1.png)

![File in vm2](/00_includes/Cloud/Week1/Azure-07/FileintheVm2.png)