# Identity and Access Management
Authentication and authorization are the two words used in the security world. They might sound similar but are completely different from each other..

## Key Terminologies
* Authentication
* Authorization
* Principle of least privilege

## Exercise 

- The difference between authentication and authorization.
- The three factors of authentication and how MFA improves security.
- What the principle of least privilege is and how it improves security.








### Sources

* [Authentication vs Authorization](https://www.javatpoint.com/authentication-vs-authorization)
* [Difference ](https://www.geeksforgeeks.org/difference-between-authentication-and-authorization/)
* [Authentication 1](https://www.pearsonitcertification.com/articles/article.aspx?p=1718488)
* [3Factor Authentication](https://www.digicast-technologies.com/what-are-the-three-aspects-of-a-3-factor-authentication/)
* [Authentication 2](https://rublon.com/blog/what-are-the-three-authentication-factors/)
* [MFA](https://cyolo.io/blog/phishing/mfa-security-when-and-why-you-should-use-multi-factor-authentication/)
* [Least Privilege](https://www.cloudflare.com/learning/access-management/principle-of-least-privilege/)
* [POLP](https://www.checkpoint.com/cyber-hub/network-security/what-is-the-principle-of-least-privilege-polp/#:~:text=The%20Principle%20of%20Least%20Privilege%20%28POLP%29%20is%20an,and%20permissions%20required%20to%20perform%20their%20job%20role.)



### Overcome challenges
 No challenges faced

 ### Results

 #### Question 1

 Authentication :

 * Authentication is the process of identifying someone's identity by assuring that the person is the same as what he is claiming for.
 * It is used by both server and client. The server uses authentication when someone wants to access the information, and the server needs to know who is accessing the information. The client uses it when he wants to know that it is the same server that it claims to be.
* The authentication by the server is done mostly by using the username and password. Other ways of authentication by the server can also be done using cards, retina scans, voice recognition, and fingerprints.
* Authentication does not ensure what tasks under a process one person can do, what files he can view, read, or update. It mostly identifies who the person or system is actually.

Authorization:

* Authorization is the process of granting someone to do something. It means its a way to check if the user has permission to use a resource or not.
* It defines that what data and information one user can access. It is also said as AuthZ.
The authorization usually works with authentication so that the system could know who is accessing the information.

#### Question 2

The three factors of Authentication are :

1. Knowledge(Something You Know): This factor refers to the information you knew beforehand that you must submit to log in to a system. Examples include usernames, passwords, security questions, and PINs and IDs. The knowledge factor isn’t secure enough as an only login credential.The knowledge factor isn’t secure enough as an only login credential. Someone can easily steal or guess a PIN or password. There need to be other authentication factors for the system to be secure.

2. Possession(Something You Have): This factor refers to a physical possession you must provide to log in. Examples include one-time password (OTP) tokens, SIM cards, smart cards, mobile phones and employee ID cards. The possession factor on its own is also not enough security. Someone can steal the physical item and submit it to the system to log in.

3. Inherence(Something You Are): This factor requires you to confirm a biological trait to log in to the system. Examples include biometrics such as fingerprint scans, facial recognition, retina scans, voice recognition, and voice geometry. The inherence aspect is considered the strongest of the three.

Multifactor Authentication (MFA): Multifactor authentication uses any two or more authentication factors. A key part of this is that the authentication factors must be in at least two of the categories.When authenication happens for atleast 2 factors , the secuirty can be assured and the risk of risk of online identity theft, fraud and data breaches can be reduced.

#### Question 3

The Principle of least privilege (POLP), also called "least privilege access," is the concept that a user should only have access to what they absolutely need in order to perform their responsibilities, and no more. The more a given user has access to, the greater the negative impact if their account is compromised or if they become an insider threat.

The POLP states that accounts, applications, and devices should only be granted the access and permissions required to do their job. This works by identifying these requirements based on business needs and a user’s, device’s, or application’s purpose within the enterprise.

For example, most employees do not need administrative access to their own computers to fulfill their roles, so POLP states that they should not have it. Similarly, finance personnel do not need access to HR records or IT systems, so they should not be granted it.

POLP also applies to limiting access to elevated permissions to tasks that require them. For example, an IT administrator may require privileged access to perform some of their job duties. However, they should use a non-privileged account for day-to-day tasks and only use their privileged account when it is necessary for a given task.

Benefits :
- Reduced Cyber Risk:  By implementing POLP. an organization limits the access that a user, application, etc. has to corporate IT resources. This makes it more difficult for an attacker who has compromised an account or application to use that access to achieve their goals.
- Fewer Errors : With POLP, users’ access to critical resources is restricted, limiting the potential for accidental infections, leaks, or outages.
- Increased Visibility: Implementing POLP requires increased visibility into an organization’s access control systems to enforce restrictions as opposed to an “allow all” policy. This increased visibility can help with detecting potential cyberattacks or other incidents that may need attention.
- Simplified Compliance : By implementing POLP and restricting the access to data protected by regulation based on business needs, an organization can shrink the scope of compliance responsibilities and audits, making it easier to achieve and demonstrate compliance.
