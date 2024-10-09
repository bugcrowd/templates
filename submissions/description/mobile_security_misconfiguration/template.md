Mobile security misconfigurations can occur at any level of the application stack and can involve unpatched software, unprotected files or pages, or unauthorized access to the application. An attacker can take advantage of security misconfigurations within the mobile application to perform further attacks on the application, the business, or its users.

**Business Impact**

This vulnerability can lead to reputational damage as customers may view the application as insecure.

**Steps to Reproduce**

1. Navigate to the following filesystem/page within the application: {{location}}
1. Observe through an HTTP interception proxy or in-application tools that there is a mobile security misconfiguration

**Proof of Concept (PoC)**

The screenshot below shows the mobile security misconfiguration:

{{screenshot}}
