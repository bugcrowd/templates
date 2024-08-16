Mobile security misconfigurations can occur at any level of the application stack and can involve unpatched software, unprotected files or pages, or unauthorized access to the application. When the system clipboard is enabled, sensitive user data, such as passwords, can be unknowingly stored on the mobile device.

An attacker could abuse the system clipboard being enabled to steal sensitive information that a user copied to their clipboard from within the application. With access to this sensitive data they could perform further attacks on the application, the business, or its users.

#### Business Impact

This vulnerability can lead to reputational damage as customers may view the application as insecure.

#### Steps to Reproduce

1. Install the application on your mobile device
1. Navigate to the following URL: {{URL}} and copy some sensitive account information
1. Paste this data in some other area of your mobile device and observe that access to the clipboard was enabled in the application

#### Proof of Concept (PoC)

The screenshot below shows the mobile security misconfiguration:

{{screenshot}}
