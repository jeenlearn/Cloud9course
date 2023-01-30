# Cost Management + Billing

Microsoft Cost Management is a suite of tools that help organizations monitor, allocate, and optimize the cost of their Microsoft Cloud workloads. Cost Management is available to anyone with access to a billing or resource management scope. The availability includes anyone from the cloud finance team with access to the billing account. And, to DevOps teams managing resources in subscriptions and resource groups.

Billing is where you can manage your accounts, invoices, and payments. Billing is available to anyone with access to a billing account or other billing scope, like billing profiles and invoice sections. The cloud finance team and organizational leaders are typically included.



## Key Terminologies
* Capital Expenditure (CapEx) : It is the up-front spending of money on physical infrastructure, and then deducting that up-front expense over time. The up-front cost from CapEx has a value that reduces over time.
* Operational Expenditure (OpEx): It is spending money on services or products now, and being billed for them now. You can deduct this expense in the same year you spend it. There is no up-front cost, as you pay for a service or product as you use it.



## Exercise 1
- The Azure principles for cost management.
- The terms of the `Free subscription`
- The difference between CAPEX and OPEX.
- The TCO calculator
- Create an alert that allows you to monitor your own Cloud Pass.
Understand the options Azure offers to see your expenses.





### Sources

* [Cost management](https://learn.microsoft.com/en-us/azure/cost-management-billing/costs/cost-mgt-best-practices)
* [Consumption based model](https://learn.microsoft.com/en-us/training/modules/describe-cloud-compute/6-describe-consumption-based-model)
* [TCO](https://www.azureguru.org/whats-the-tco-calculator/)
* [TCO calculator](https://azure.microsoft.com/en-in/pricing/tco/calculator/)
* [Cost management video](https://www.youtube.com/watch?v=mfhKPNDKCko)

### Overcome challenges

 ### Results

#### Question 1

Azure principles for cost management:

- Planning:
Comprehensive, up-front planning allows you to tailor cloud usage to your specific business requirements.

- Visibility:
When structured well, Cost Management helps you to inform people about the Azure costs they're responsible for or for the money they spend. Azure has services designed to give you insight into where your money is spent. Take advantage of these tools. They can help you find resources that are underused, remove waste, and maximize cost-saving opportunities.

- Accountability:
To fully understand your organization's Azure spending, you should organize your resources to maximize insight into cost attribution. Good organization helps to manage and reduce costs and hold people accountable for efficient spending in your organization.

- Optimization:
Act to reduce your spending. Make the most of it based on the findings gathered through planning and increasing cost visibility. 

- Iteration :
Everyone in your organization must engage in the cost management lifecycle. They need to stay involved on an ongoing basis to optimize costs. Be rigorous about this iterative process and make it a key tenet of responsible cloud governance in your organization.

![Cost](/00_includes/Cloud/Week1/principles.png)

#### Question 2

Terms of Free subscription

12 months of popular free services
$200 credit in your billing currency to explore services for 30 days
25+ services are always free

#### Question 3 

Capital expenditure(CAPEX) :

CapEx is typically a one-time, up-front expenditure to purchase or secure tangible resources. A new building, repaving the parking lot, building a datacenter, or buying a company vehicle are examples of CapEx.


Operational expenditure (OPEX):

OpEx is spending money on services or products over time. Renting a convention center, leasing a company vehicle, or signing up for cloud services are all examples of OpEx.

Cloud computing falls under OpEx because cloud computing operates on a consumption-based model. With cloud computing, you don’t pay for the physical infrastructure, the electricity, the security, or anything else associated with maintaining a datacenter. Instead, you pay for the IT resources you use. If you don’t use any IT resources this month, you don’t pay for any IT resources.

In a cloud-based model, you don’t have to worry about getting the resource needs just right. If you find that you need more virtual machines, you add more. If the demand drops and you don’t need as many virtual machines, you remove machines as needed. Either way, you’re only paying for the virtual machines that you use, not the “extra capacity” that the cloud provider has on hand.

#### Question 4

The TCO calculator

The TCO Calculator helps you estimate the cost savings of operating your solution on Azure over time, instead of in your on-premises datacenter.
The term total cost of ownership is commonly used in finance. It can be hard to see all the hidden costs related to operating a technology capability on-premises. Software licenses and hardware are additional costs.

With the TCO Calculator, you enter the details of your on-premises workloads. Then you review the suggested industry average cost (which you can adjust) for related operational costs. These costs include electricity, network maintenance, and IT labor. You’re then presented with a side-by-side report. Using the report, you can compare those costs with the same workloads running on Azure.

For example :


![Image](/00_includes/Cloud/Week1/2-tco-report-bar-graphs.png)

#### Question 5

For doing this you can set a budget for your account , and  add an alert to it. So when the budget nears that amount , it will send an alert to the email id added while creating the budget.This can help you to keep track of your expenses.


![Alert](/00_includes/Cloud/Week1/Azure-02/AZ-02.1.PNG)


![CM](/00_includes/Cloud/Week1/Azure-02/AZ-02.2.PNG)


![CM](/00_includes/Cloud/Week1/Azure-02/AZ-02.3.PNG)

![CM](/00_includes/Cloud/Week1/Azure-02/AZ-02.4.PNG)

![CM](/00_includes/Cloud/Week1/Azure-02/AZ-02.PNG)

![CM](/00_includes/Cloud/Week1/Azure-02/AZ-02-ViewExp.PNG)