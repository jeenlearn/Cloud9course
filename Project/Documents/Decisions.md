### Decisions

1. The webserver is a linux machine and the management server is a windows machine.
2. The management server's public ip address is passed  as the source ip address to the NSG rule for the port 22 of webserver,so that the web server can be accessed by only the management server . In future if need to be changed , the source ip address in the NSG of web server needs to be changed.
3. When the web server was moved to the virtual machine scale set, I chose to use the Uniform orchestration mode, in this orchestration mode the backup of the webserver is not supported by Azure. The webserver currently dont have any data to be backedup. The post deployment script which is used to run in the extension of the virtual machine scale set  is stored in Storage Account which is not available to the public and hence is protected.
4. In this project Im using the key vault to create the self signed certificate. In future if you have a SSL certificate signed by the Certificate Authority , you can import that certificate to the Key vault and the application gateway will be able to access the certificate with out any problem.  Application Gateway only supports certificates in Personal Information Exchange (PFX) format, so this need to be considered while importing the certificate.

5. The disk encryption of the web server is not done. Azure disk encryption is not supported on OS disk of Linux virtual machine scale set created using uniform orchestration. By default server side ecryption with platform manged key is available on the OS and data disks. As we dont have any data disk on the webserver,Azure disk encryption is not done on data disk as well.
6. The application gateway by default provides a backend health check , I have added a custom health probe to check the health of the backend pool in addition to it. As the health check is part of the application gateway,it doesnot show in the virtual machine scale set whether the instances are healthy or not.

