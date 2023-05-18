# 0x19. Postmortem
**DevOps, 
SysAdmin**

## Concepts
For this project, we expect you to look at this concept:
* [On-call](https://intranet.alxswe.com/concepts/39)

**Background Context**
Any software system will eventually fail, and that failure can come stem from a wide range of possible factors: bugs, traffic spikes, security issues, hardware failures, natural disasters, human error… Failing is normal and failing is actually a great opportunity to learn and improve. Any great Software Engineer must learn from his/her mistakes to make sure that they won’t happen again. Failing is fine, but failing twice because of the same issue is not.

A postmortem is a tool widely used in the tech industry. After any outage, the team(s) in charge of the system will write a summary that has 2 main goals:

* To provide the rest of the company’s employees easy access to information detailing the cause of the outage. Often outages can have a huge impact on a company, so managers and executives have to understand what happened and how it will impact their work.
* And to ensure that the root cause(s) of the outage has been discovered and that measures are taken to make sure it will be fixed.

## Resources:books:
**Read or watch:**
* [Incident Report, also referred to as a Postmortem](https://sysadmincasts.com/episodes/20-how-to-write-an-incident-report-postmortem)
* [The importance of an incident postmortem process](https://www.atlassian.com/incident-management/postmortem)
* [What is an Incident Postmortem?](https://www.pagerduty.com/resources/learn/incident-postmortem/)

### More Info
It is your responsibility to request a review for your postmortem from a peer before the project’s deadline. If no peers have been reviewed, you should request a review from a TA or staff member.

## Tasks
0. My first postmortem

![](pQ9YzVY.gif)

Using one of the web stack debugging project issue or an outage you have personally face, write a postmortem. Most of you will never have faced an outage, so just get creative and invent your own :)

**Timeline:**
* The issue was detected when monitoring alerts indicated an increase in API response times.
- Actions Taken: The engineering team immediately began investigating the issue, focusing on the API service, database, and network infrastructure. Initial assumption was that the problem could be related to a recent deployment.
- Misleading Investigation/Debugging Paths: The team initially suspected a database issue due to the high latency observed. Extensive debugging and optimization efforts were made on the database queries, but did not resolve the problem.
- Escalation: As the issue persisted, the incident was escalated to the senior engineering team and the operations manager for further investigation and resolution.
- Resolution: After thorough analysis, it was discovered that the root cause of the issue was a misconfiguration in the load balancer's connection pool settings, leading to a bottleneck in connection availability.
Root Cause and Resolution:
The misconfiguration in the load balancer's connection pool settings caused the pool to exhaust its available connections and misconfiguration in wp-settings.php, leading to increased latency and eventual service degradation. The load balancer was unable to distribute incoming requests effectively, resulting in slow response times and occasional service unavailability.
To resolve the issue, the load balancer's connection pool settings were adjusted to increase the maximum number of connections. Additionally, the connection timeout value was optimized to ensure better utilization of available connections.
Corrective and Preventative Measures:

1. Load Balancer Optimization: Regular reviews of load balancer configurations will be performed to ensure optimal settings and prevent similar issues in the future.
   - Task: Implement automated configuration checks for the load balancer to detect potential misconfigurations.
   - Task: Implement load testing scenarios to assess the load balancer's performance under high traffic conditions.
2. Monitoring and Alerting Enhancements: Strengthen the monitoring and alerting system to proactively detect and respond to performance degradation.
   - Task: Implement real-time monitoring of connection pool utilization and throughput to identify potential bottlenecks.
   - Task: Set up automated alerts for abnormal response times or increased error rates to facilitate early detection and investigation.
3. Incident Response and Escalation: Improve the incident response process to streamline communication and escalation procedures.
   - Task: Establish clear escalation paths and roles within the team to ensure timely involvement of relevant stakeholders.
   - Task: Conduct regular incident response drills and trainings to enhance team preparedness and coordination during critical incidents.
4. Documentation and Knowledge Sharing: Promote knowledge sharing to leverage past experiences and prevent recurrence of similar issues.
   - Task: Document the root cause analysis and resolution steps in the internal knowledge base.
   - Task: Conduct post-incident reviews to share lessons learned and distribute the findings among the engineering teams.
By implementing these corrective and preventative measures, we aim to minimize the impact of future incidents, enhance system stability, and improve overall service reliability for our users.

# Author:
**Auwal Abdulmalik** - [Amkeez](https://github.com/Amkeez252?tab=repositories), [Twitter](https://twitter.com/amalik_o?t=MwA1d_AET7x5IkMv4INEMg&s=09)
