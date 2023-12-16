# Cross-Site Scripting Off Domain

## Overview of the Vulnerability:

Cross-Site Scripting (XSS) is a type of injection attack where malicious JavaScript is injected into a website. When a user visits the affected web page, the Javascript executes within that user’s browser in the context of the domain. XSS can be found in this application which allows an attacker to control code that is executed within a user’s browser in the context of a domain which is off the primary domain.

This carries the risk of an attacker being able to trigger an exploit on a separate domain, where only cookies scoped for that domain are at risk. By controlling code that is executed within a user’s browser, an attacker could carry out any action that the user is able to perform. This could include accessing any of the user's data and modifying information within the user’s permissions, assuming that there is a misconfiguration of the scoping for cookies and Cross-Origin Resource Sharing (CORS).
  
## Business Impact:

XSS could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce:

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Log into an account and navigate to: {{URL}}
1. Observe the JavaScript payload being executed

## Proof of Concept (PoC):

Below is a screenshot demonstrating the injected JavaScript executing:

{{screenshot}}
