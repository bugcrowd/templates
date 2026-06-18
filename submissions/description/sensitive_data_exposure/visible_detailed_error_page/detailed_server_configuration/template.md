Visible detailed error pages are a result of improper error handling which introduces a variety of security problems for a website. Detailed internal error messages, such as error codes, stack traces and database dumps, can be displayed publicly, leaking implementation information.

The detailed server configuration leaked by this application shows which versions of software are running, physical paths, environmental variables, and the software configuration settings. An attacker can collect this data and combine it with other attack vectors to increase the severity and impact of malicious attacks on the application or exploit specific versions of software that have known vulnerabilities.

**Business Impact**

This vulnerability could enable attacker exploitation that will disrupt product or service availability, 
leading to financial loss and impact customers’ trust in the application.

**Steps to Reproduce**

1. Use a browser to navigate to: {{URL}}
2. Observe detailed error message showing detailed server configuration

**Proof of Concept (PoC)**

The following screenshot shows the data disclosed in the detailed server configuration:

{{screenshot}}
