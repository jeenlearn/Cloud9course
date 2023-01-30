# Azure Well-Architected Framework
The Azure Well-Architected Framework is a set of guiding tenets to build high-quality solutions on Azure. There's no one-size-fits-all approach to designing an architecture, but there are some universal concepts that will apply regardless of the architecture, technology, or cloud provider.

The Azure Well-Architected Framework consists of five pillars:

- Cost optimization
- Operational excellence
- Performance efficiency
- Reliability
- Security

![Pillars](/00_includes/Cloud/Week2/Azure-12/pillars.png)

- Cost optimization : You'll want to design your cloud environment so that it's cost-effective for operations and development. Identify inefficiency and waste in cloud spending to ensure you're spending money where you can make the greatest use of it.

- Operational excellence: By taking advantage of modern development practices such as DevOps, you can enable faster development and deployment cycles. You need to have a good monitoring architecture in place so that you can detect failures and problems before they happen or, at a minimum, before your customers notice. Automation is a key aspect of this pillar to remove variance and error while increasing operational agility.

- Performance efficiency : For an architecture to perform well and be scalable, it should properly match resource capacity to demand. Traditionally, cloud architectures accomplish this balance by scaling applications dynamically based on activity in the application. Demand for services changes, so it's important for your architecture to be able to adjust to demand. By designing your architecture with performance and scalability in mind, you'll provide a great experience for your customers while being cost-effective.

![Performance](/00_includes/Cloud/Week2/Azure-12/performance-demand.png)

- Reliability : Every architect's worst fear is having an architecture fail with no way to recover it. A successful cloud environment is designed in a way that anticipates failure at all levels. Part of anticipating failures is designing a system that can recover from a failure within the time that your stakeholders and customers require.

![Failure](/00_includes/Cloud/Week2/Azure-12/system-failure.png)

- Security : Data is the most valuable piece of your organization's technical footprint. In this pillar, you'll focus on securing access to your architecture through authentication and protecting your application and data from network vulnerabilities. You should protect the integrity of your data too, through tools like encryption.

    You must think about security throughout for the entire lifecycle of your application, from design and implementation to deployment and operations. The cloud provides protections against a variety of threats, such as network intrusion and DDoS attacks. But you still need to build security into your application, processes, and organizational culture.

![Security](/00_includes/Cloud/Week2/Azure-12/security%20(1).png)

### Cost Optimization

Cost optimization is ensuring that the money your organization spends is being used to maximum effect. Cloud services provide computing as a utility. Technologies in the cloud are provided under a service model, to be consumed on demand. This on-demand service offering drives a fundamental change that directly affects planning, bookkeeping, and organizing.

To optimize costs in your organization's architecture, you can use several principles:
- Plan and estimate costs
- Provision with optimization
- Use monitoring and analytics to gain cost insights
- Maximize efficiency of cloud spend

### Operational excellence

Operational excellence is about ensuring that you have full visibility into how your application is running, and ensuring the best experience for your users. Operational excellence includes making your development and release practices more agile, which allows your business to quickly adjust to changes. By improving operational capabilities, you can have faster development and release cycles, and a better experience for your application's users.

You can use several principles when driving operational excellence through your architecture.
- Design, build, and orchestrate with modern practices
- Use monitoring and analytics to gain operational insights
- Use automation to reduce effort and error
- Test

### Performance efficiency

Performance efficiency is matching an application's available resources with the demand that it's receiving. Performance efficiency includes scaling resources, identifying and optimizing potential bottlenecks, and optimizing your application code for peak performance.

Let's look at some patterns and practices that can enhance the scalability and performance of your application.

- Scale up and scale out
- Optimize network performance
- Optimize storage performance
- Identify performance bottlenecks in your application

### Reliability

Architecting for reliability ensures that your application can meet the commitments you make to your customers. This includes ensuring that your systems are available to end users and can recover from any failures.
- Build a highly available architecture
- Build an architecture that can recover from failure

### Security

Security is ultimately about protecting the data that your organization uses, stores, and transmits. The data that your organization stores or handles is at the heart of your securable assets. 

- Defense in depth:
A multilayered approach to securing your environment will increase the security posture of your environment. Commonly known as defense in depth, we can break down the layers as follows:

    - Data
    - Applications
    - VM/compute
    - Networking
    - Perimeter
    - Policies and access
    - Physical security

![Security](/00_includes/Cloud/Week2/Azure-12/security-layers.png)

Protect from common attacks: 

At each layer, there are some common attacks that you'll want to protect against. The following list isn't all-inclusive, but it can give you an idea of how each layer can be attacked and what types of protections you might need.

Data layer: Exposing an encryption key or using weak encryption can leave your data vulnerable if unauthorized access occurs.

Application layer: Malicious code injection and execution are the hallmarks of application-layer attacks. Common attacks include SQL injection and cross-site scripting (XSS).

VM/compute layer: Malware is a common method of attacking an environment, which involves executing malicious code to compromise a system. After malware is present on a system, further attacks that lead to credential exposure and lateral movement throughout the environment can occur.

Networking layer: Unnecessary open ports to the internet are a common method of attack. These might include leaving SSH or RDP open to virtual machines. When these protocols are open, they can allow brute-force attacks against your systems as attackers attempt to gain access.

Perimeter layer: Denial-of-service (DoS) attacks often happen at this layer. These attacks try to overwhelm network resources, forcing them to go offline or making them incapable of responding to legitimate requests.

Policies and access layer: This layer is where authentication occurs for your application. This layer might include modern authentication protocols such as OpenID Connect, OAuth, or Kerberos-based authentication such as Active Directory. The exposure of credentials is a risk at this layer, and it's important to limit the permissions of identities. You also want to have monitoring in place to look for possible compromised accounts, such as logins coming from unusual places.

Physical layer: Unauthorized access to facilities through methods, such as door drafting and theft of security badges, can happen at this layer.
## Key Terminologies


## Sources

*[ Architecture](https://learn.microsoft.com/en-us/azure/architecture/framework/)

* [Cost Optimization](https://learn.microsoft.com/en-us/training/modules/azure-well-architected-introduction/3-cost-optimization)



## Overcome challenges



