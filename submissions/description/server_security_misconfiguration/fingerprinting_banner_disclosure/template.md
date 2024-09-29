Fingerprinting is where an attacker identifies the services running on a host due to visible default banners. This information helps an attacker to formulate a list of applicable exploits on a target system.

The application responds with a banner disclosing the type and version of the web server being run. From this information an attacker can determine if the application is vulnerable to known vulnerabilities. Older versions of servers are particularly susceptible to known, version-specific attacks if they do not have up-to-date security patches.

**Business Impact**

Banner disclosures can lead to reputational damage for the business due to a loss in confidence from users who can see that the web server is running on older software. If an attacker is successful in identifying and exploiting a known vulnerability for the identified version of software on this host, this can lead to indirect financial losses and data loss.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Send a request to the endpoint
1. Using the HTTP interception proxy, observe the response, noting the information disclosed about the server:

{{value}}

**Proof of Concept (PoC)**

The screenshot below demonstrates the banner disclosure:

{{screenshot}}
