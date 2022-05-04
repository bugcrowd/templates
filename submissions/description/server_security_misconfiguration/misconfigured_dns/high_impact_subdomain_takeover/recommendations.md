# Recommendation(s)

There is no single technique to stop subdomain takeover from occurring. However, implementing the right combination of defensive measures will prevent and limit the impact of subdomain takeover. Some best practices include the following:

- Ensure that the business has an inventory of all domains and hosting providers and that this inventory is maintained and updated regularly to prevent dangling records.
- Clearly defined and implemented standard processes for the provisioning and deprovisioning of hosts. For example, ensure that all steps are performed closely together. When provisioning, claim the virtual host first, and create the DNS records last. When deprovisioning, remove the DNS records first.

For more information, please see the following guides:

- <https://www.bugcrowd.com/glossary/subdomain-takeover/>
- <https://developer.mozilla.org/en-US/docs/Web/Security/Subdomain_takeovers>
- <https://owasp.org/www-project-web-security-testing-guide/stable/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/10-Test_for_Subdomain_Takeover>
