# Shared Responsibility Model

The Shared Responsibility Model is a globally accepted cloud security framework that reflects the security obligations and responsibilities of your cloud provider and those that belong to you, the customer.


## Key Terminologies


Division of Responsibility:

In an on-premises datacenter, you own the whole stack. As you move to the cloud some responsibilities transfer to Microsoft. The following diagram illustrates the areas of responsibility between you and Microsoft, according to the type of deployment of your stack.


![Shared respo](/00_includes/Cloud/Week2/shared-responsibility.svg)

For all cloud deployment types, you own your data and identities. You are responsible for protecting the security of your data and identities, on-premises resources, and the cloud components you control (which varies by service type).

Regardless of the type of deployment, the following responsibilities are always retained by you:

Data
Endpoints
Account
Access management


The Shared Responsibilites :

Identity and directory structure:

In PaaS and SaaS solutions, Identity & access management is a shared responsibility that
requires an effective implementation plan that includes configuration of an identity provider,
configuration of administrative services, establishing and configuration of user identities, and
implementation of service access controls. Additional considerations that should be considered
are the use of two-factor authentication, role-based access control, just-in-time administrative
controls, and monitoring and logging of both users and control points. 
Cloud solutions such as Azure Active Directory (Azure AD) provide capabilities such as
multifactor authentication, identity protection, and robust role-based access control. Azure
Active Directory also provides the ability to provision on-premises and third-party applications such as
Box, Concur, Google Apps, Salesforce, and more.

Applications:

Platform-managed applications and services such as web services, batch, docDb, IoT, analytics,
media services, and many other related capabilities reduce customers’ responsibilities by
providing a more comprehensively secure solution that is managed by the CSP. Managed
applications require customers to configure the services correctly, but offer more
comprehensive security capabilities and integration with other solutions, such as identity
management.
This shared responsibility between CSP and customer can be illustrated in a web service
deployment. By default, an Azure web service is publicly open to view, which may or may not be
the desired state and requires customer configuration to address the need of the solution being
designed. One benefit of PaaS solutions is that they do not require the customer to implement
the same security configurations as an infrastructure deployment, such as a virtual machine, by
itself, since a CSP already takes care of that. Examples include patch management, antimalware,
and baseline configuration. Additionally, a CSP’s compliance audit reports can be used to
supplement a customer deployment to meet regulatory obligations, and compliance effort. 

Network Controls:

Network control includes the configuration, management, and securing of network elements
such as virtual networking, load balancing, DNS, and gateways. The controls provide a means for
services to communicate and interoperate.
In SaaS solutions, network controls are managed and secured for customers as part of a
software as a core offering, because the network infrastructure is abstracted from them.
As in SaaS solutions, most networking control configuration in a PaaS solution is done by the
service provider. With Microsoft Azure, hybrid solutions are the exception because virtual
machines are placed on an Azure Virtual Network, which allows customers to configure network
level services.



## Exercise 1


### Sources

*[Shared responibility](https://learn.microsoft.com/en-us/azure/security/fundamentals/shared-responsibility)



### Overcome challenges

### Results


