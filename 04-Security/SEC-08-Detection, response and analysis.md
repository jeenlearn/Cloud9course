# Detection, response and analysis
Detecting an (attempted) attack is the first step to stopping it and to preventing future attempts.The first thing to do in response to a detected attack is trying to contain the damage. Depending on the kind of attack, the way you do this might differ. After the attack is contained, you can try to figure out the root cause of the attack, so that you can stop it. Finally, you enter the recovery phase, where you try to get all systems back online and you take stock of the damage done.
Response, and analysis are part of a disaster recovery plan. This plan is an important part of a bigger business continuity plan. 


## Key Terminologies
* Intrusion Detection Systems (IDS): IDS systems monitor and analyze network traffic for packets and other signs of network invasion. The system then flags known threats and hacking methods. IDS systems detect port scanners, malware, and other violations of system security policies.
* Intrusion Prevention Systems (IPS): IPS systems reside in the same area as a firewall, between the internal network and the outside internet. If the IDS system flags something as a threat, the IPS system denies the malicious traffic. If the traffic represents a known threat in the databases, the IPS will shut the threat out and not deliver any malicious packets.
* Incident Response Plan:Organisations in preparation for a cyber-security incident need to design an incident response plan. This plan should cover procedures that are needed to be followed in phases such as:
    1. Initial Assessment: To determine if the incident is caused by an actual cyber-attack or a false positive. Besides determining the cause of the incident, the responding personnel / team will have to gather enough information to decide on how they should proceed from their initial assessment.
    2. Contain Damage and Minimise Risk: Limiting and preventing any further damage is the main purpose of this phase.
        A three-pronged approach is needed to mitigate a security incident:
        * Short-term containment (e.g. isolate affected network, shutting down servers, rerouting traffic, and etc.),
        * System backup (e.g. preserve evidence for analysis), and
        * Long-term containment (e.g. deploy temporary fixes such as patches and removing backdoors to allow continued use of the system without a total shutdown).
    3. Removal and Recovery:Steps taken here are to remove the malicious content and restore the affected systems. Examples can be using the original disk images to restore the system, installing patches, scanning for malicious software, and disabling unused services to harden the system. Testing, monitoring, and validating the recovered system are also required to avoid repeating the security incident.
    4. Lessons Learned: Lastly, the responding personnel / team will have to document the lessons learned from the security incident, providing a source of reference in the event of a similar incident, as well as suggestions on how to improve the organisation’s effectiveness in dealing with future incidents.
* System Hardening :System hardening is a collection of tools, techniques, and best practices to reduce vulnerability in technology applications, systems, infrastructure, firmware, and other areas. The goal of systems hardening is to reduce security risk by eliminating potential attack vectors and condensing the system’s attack surface. By removing superfluous programs, accounts functions, applications, ports, permissions, access, etc. attackers and malware have fewer opportunities to gain a foothold within your IT ecosystem.Major types of hardening include Server Hardening,Software Application Hardening,Operating System Hardening,Database Hardening and Network Hardening.

* Different types of disaster recovery options.
    1. Data Center Disaster Recovery Plans
    2. Data Back-up Disaster Recovery Plans
    3. Virtual Disaster Recovery Plans
    4. Disaster Recovery as a Service (DRaaS)
    5. Hot Site Disaster Recovery
    6. Cold Site Disaster Recovery Plans
* Recovery Time Objective:The recovery time objective (RTO) is the maximum acceptable time that an application, computer, network, or system can be down after an unexpected disaster, failure, or comparable event takes place.RTO answers the question ,'How long did it take to restore the infrastructure after being notified of its disruption.?'It normally defines the highest acceptable downtime an organisation can manage

* Recovery Point Objective (RPO) : It is the measure of the acceptable data loss in terms of amount or time a busisness can afford during a disruption.RPO focusses on the amount of data and serves the sole purpose of defining back up frequency.


## Exercise 

- A Company makes daily backups of their database. The database is automatically recovered when a failure happens using the most recent available backup. The recovery happens on a different physical machine than the original database, and the entire process takes about 15 minutes. What is the RPO of the database?

- An automatic failover to a backup web server has been configured for a website. Because the backup has to be powered on first and has to pull the newest version of the website from GitHub, the process takes about 8 minutes. What is the RTO of the website?













### Sources

* [IDS vs IPS](https://www.bitlyft.com/resources/what-is-the-difference-between-ids-and-ips)
* [IDS and IPS](https://www.varonis.com/blog/ids-vs-ips)
* [Incident Response Plan](https://www.csa.gov.sg/gosafeonline/go-safe-for-business/smes/youve-been-hacked-whats-your-response-plan)
* [DRP1](hhttps://dynamixsolutions.com/types-disaster-recovery-plans/)
* [Types of Disaster Recovery Plan](https://sados.com/blog/types-of-disaster-recovery-plans/)
* [RTO](https://www.druva.com/glossary/what-is-recovery-time-objective-definitions-and-related-faqs/)
* [RTO vs RPO](https://www.businesstechweekly.com/operational-efficiency/business-continuity/recovery-time-objective-rto-and-recovery-point-objective-rpo/#:~:text=Recovery%20Time%20Objective%20%28RTO%29%20and%20Recovery%20Point%20Objective,differ%20in%20many%20ways%20and%20serve%20different%20purposes.)
* [RTO](https://www.acronis.com/en-us/blog/posts/rto-rpo/)




### Overcome challenges
 

 ### Results

 #### Question 1

The RPO of the database is 24 hours. As it is backed up everyday, the threshold of dataloss acceptable by the company is 24 hours.

 #### Question 2

 The RTO of the website is 8 mins beyond which it might loss some business. The recovery after disaster takes a max of 8 mins, it should be considered as the acceptable downtime of the website within which the website has to go up and running.






