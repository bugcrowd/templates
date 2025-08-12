The application contained a 'robots.txt' file, which is intended to prevent web 'robots' from visiting certain directories in a website for maintenance or indexing purposes. 

A malicious user may also use the contents of robots.txt to enumerate sensitive files or directories on the affected site and either retrieve them directly or target them for other attacks.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Proof of Concept (PoC)**

The following hidden or sensitive directories and files were disclosed in the Robots.txt file:

```
<Code snippet containing sensitive robots.txt entries>
````
