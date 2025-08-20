Visible detailed error pages are a result of improper error handling which introduces a variety of security problems for a website. Detailed internal error messages, such as error codes, stack traces and database dumps, can be displayed publicly, leaking implementation information.

The full path disclosure leaked by this application displays implementation information which should not be publicly available. An attacker can collect this data and combine it with other attack vectors to increase the severity and impact of malicious attacks on the application and access the paths displayed.

**Business Impact**

This vulnerability could enable attacker exploitation that will disrupt product or service availability, leading to direct financial loss.
It can impact customers’ trust in the application which can result in reputational damage for the business and indirect financial losses.

**Steps to Reproduce**

1. Use a browser to navigate to: {{URL}}
2. Observe detailed error message showing the full path disclosure

**Proof of Concept (PoC)**

The following screenshot shows the data disclosed in the full path disclosure:

{{screenshot}}
