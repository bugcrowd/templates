Disabled or insufficient logging occurs where critical security logs are either completely turned off, or the level of detail captured is inadequate for effective security monitoring and incident response. This can apply to various cloud services, including virtual machines, databases, serverless functions, and network flow logs. An attacker who gains access to the system with disabled or insufficient logging is able to do so undetected by security teams.

**Business Impact**

This vulnerability can result in financial losses and regulatory fines, as well as reputational damage and a loss of customer trust.

**Steps to Reproduce**

1. Identify the cloud service or resource where logging is expected to be enabled: {{service or resource}}
2. Review the logging configuration for this service or resource to determine if logging is disabled or set to a minimal level: {{logging configuration}}
3. Perform an action that should generate security logs (e.g., failed login attempts, unauthorized access attempts, configuration changes): {{action that should generate logs}}
4. Attempt to retrieve logs related to this action. Observe that no logs are generated, or that the logs lack the necessary detail to understand the action, confirming disabled or insufficient logging.

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
