Logging and monitoring issues in cloud environments include deficiencies in collecting, storing, and analyzing security-relevant logs and metrics. Without proper logging and monitoring, detection, investigation, and response to security incidents becomes significantly challenging. An attacker who gains access to the system is able to do so undetected by security teams.

**Business Impact**

This vulnerability can result in financial losses and regulatory fines, as well as reputational damage and a loss of customer trust.

**Steps to Reproduce**

1. Identify a cloud service or resource with insufficient logging and monitoring: {{cloud_service_or_resource_id}}
1. Perform actions that should generate security logs (e.g., failed login attempts, unauthorized access attempts, configuration changes): {{actions that should generate logs}}
1. Attempt to locate and analyze the corresponding logs in the cloud provider's logging service or SIEM: {{logging platform or tool}}
1. Observe that critical security events are either not logged, are incomplete, or that alerts are not triggered for suspicious activities, indicating a deficiency

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
