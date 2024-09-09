Cross-Site Scripting (XSS) is a type of injection attack where malicious JavaScript is injected into a website. When a user visits the affected web page, the Javascript executes within that user’s browser in the context of the domain. This instance of XSS can be found on the domain which allows an attacker to control code that is executed within a user’s Internet Explorer browser. From here, an attacker could carry out any actions that the user is able to perform, including accessing any of the user's data and modifying information within the user’s permissions.
  
## Business Impact

XSS could result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use an Internet Explorer browser to navigate to: {{URL}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Log into an account and navigate to URL which contains the payload
1. Observe the JavaScript payload being executed

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
