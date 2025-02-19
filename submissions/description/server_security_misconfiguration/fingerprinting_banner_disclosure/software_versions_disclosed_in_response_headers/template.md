Software version numbers were disclosed within the HTTP response headers. 

An attacker could use this information to enumerate the underlying technologies and plan further attacks based on the versions disclosed. 

**Business Impact**

Software version disclosures can lead to reputational damage for the business due to a loss in confidence from users who can see that the web server is running on older software. If an attacker is successful in identifying and exploiting a known vulnerability for the identified version of software on this host, this can lead to indirect financial losses and data loss.


**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. In a browser, navigate to the homepage of the application 
1. Use the Web Proxy to intercept the response
1. Observe the `{{header name}}` response header, noting the the version number disclosed for the software `{{disclosed software}}`, e.g:

>`Server: nginx/1.17.10`
