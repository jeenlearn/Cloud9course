# Azure Active Directory
Azure Active Directory (Azure AD) is a cloud-based identity and access management service. This service helps your employees access external resources, such as Microsoft 365, the Azure portal, and thousands of other SaaS applications. Azure Active Directory also helps them access internal resources like apps on your corporate intranet network, along with any cloud apps developed for your own organization.

## Who uses Azure AD?
- IT admins: As an IT admin, use Azure AD to control access to your apps and your app resources, based on your business requirements.
- App developers: As an app developer, you can use Azure AD as a standards-based approach for adding single sign-on (SSO) to your app, allowing it to work with a user's pre-existing credentials.
- Microsoft 365, Office 365, Azure, or Dynamics CRM Online subscribers: As a subscriber, you're already using Azure AD.

## What are the Azure AD licenses?

- Azure Active Directory Free. Provides user and group management, on-premises directory synchronization, basic reports, self-service password change for cloud users, and single sign-on across Azure, Microsoft 365, and many popular SaaS apps.
- Azure Active Directory Premium P1. In addition to the Free features, P1 also lets your hybrid users access both on-premises and cloud resources. It also supports advanced administration, such as dynamic groups, self-service group management, Microsoft Identity Manager, and cloud write-back capabilities, which allow self-service password reset for your on-premises users.
- Azure Active Directory Premium P2. In addition to the Free and P1 features, P2 also offers Azure Active Directory Identity Protection to help provide risk-based Conditional Access to your apps and critical company data and Privileged Identity Management to help discover, restrict, and monitor administrators and their access to resources and to provide just-in-time access when needed.
- "Pay as you go" feature licenses. You can also get additional feature licenses, such as Azure Active Directory Business-to-Customer (B2C). B2C can help you provide identity and access management solutions for your customer-facing apps. 

## Azure AD and Subscriptions

An Azure subscription has a trust relationship with Azure Active Directory (Azure AD). A subscription trusts Azure AD to authenticate users, services, and devices.
Multiple subscriptions can trust the same Azure AD directory. Each subscription can only trust a single directory.When a user signs up for a Microsoft cloud service, a new Azure AD tenant is created and the user is made a member of the Global Administrator role. However, when an owner of a subscription joins their subscription to an existing tenant, the owner isn't assigned to the Global Administrator role.

## Active Directory Vs Azure Active Directory

Azure Active Directory is the next evolution of identity and access management solutions for the cloud. Microsoft introduced Active Directory Domain Services in Windows 2000 to give organizations the ability to manage multiple on-premises infrastructure components and systems using a single identity per user.

Azure AD takes this approach to the next level by providing organizations with an Identity as a Service (IDaaS) solution for all their apps across cloud and on-premises.

## Key Terminologies

- ADDS : Active Directory Domain Services (AD DS) - Enterprise-ready lightweight directory access protocol (LDAP) server that provides key features such as identity and authentication, computer object management, group policy, and trusts.
AD DS is a central component in many organizations with an on-premises IT environment, and provides core user account authentication and computer management features.
- Azure AD: Azure Active Directory (Azure AD) - Cloud-based identity and mobile device management that provides user account and authentication services for resources such as Microsoft 365, the Azure portal, or SaaS applications.
Azure AD can be synchronized with an on-premises AD DS environment to provide a single identity to users that works natively in the cloud.
- Azure Active Directory Domain Services (Azure AD DS) - Provides managed domain services with a subset of fully-compatible traditional AD DS features such as domain join, group policy, LDAP, and Kerberos / NTLM authentication.
Azure AD DS integrates with Azure AD, which itself can synchronize with an on-premises AD DS environment. This ability extends central identity use cases to traditional web applications that run in Azure as part of a lift-and-shift strategy.


## Exercise 1

- Create an Active Directory

### Sources

* [Azure AD](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis)
* [Create Directory](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-access-create-new-tenant)
* [Compare AAD vs AD](https://learn.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-compare-azure-ad-to-ad)
* [Compare self managed ADDS ,AAD and managed ADDS](https://learn.microsoft.com/en-us/azure/active-directory-domain-services/compare-identity-solutions)



### Overcome challenges

### Results


