Mobile security misconfigurations can occur at any level of the application stack and can involve unpatched software, unprotected files or pages, or unauthorized access to the application. When automatic backup is allowed by default, sensitive user data can be unknowingly stored on the mobile device.

An attacker could abuse an application that has auto backup allowed by default to access this sensitive data from the application once they have physical access to the device. This could allow the attacker to bypass any in-app authentication and access sensitive data which they could abuse to perform further attacks on the application, the business, or its users.

#### Business Impact

This vulnerability can lead to reputational damage as customers may view the application as insecure.

#### Steps to Reproduce

1. Install the application on an android mobile device
1. In the mobile device, enable USB debugging
1. Use the android ADB tool to backup the data of the mobile device
1. In this backup, view that sensitive data from the application was included in the backup automatically

#### Proof of Concept (PoC)

The screenshot below shows the mobile security misconfiguration:

{{screenshot}}
