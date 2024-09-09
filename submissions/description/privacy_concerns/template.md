Privacy concerns arise when an application collects user or user device data that is not necessary for the functionality of the application. Unnecessary can range from personally identifiable user information to user device information that is not needed for use of the application. If an attacker were to gain access to this collected information they could perform further attacks on the application, the business, or its users.
  
## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Observe in the HTTP interception proxy that unnecessary data is being collected

## Proof of Concept (PoC)

Below is a screenshot demonstrating that unnecessary data collection:

{{screenshot}}
