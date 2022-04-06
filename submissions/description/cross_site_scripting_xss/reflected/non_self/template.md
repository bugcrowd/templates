# Reflected Cross-Site Scripting (Non-self)

## Overview of the Vulnerability

Reflected Cross-Site Scripting (XSS) is a type of injection attack where malicious JavaScript code is injected into a trusted website. When a user visits the page with the malicious code, the JavaScript code executes and its input is reflected in a user’s browser without being safely encoded. If an attacker can control code that is executed within a user’s browser they are able to steal data, such as session cookies, and perform a session hijack, which can lead to account takeover. An attacker can also carry out any actions that the user is able to perform, including accessing any of the user's data and modifying information within the user’s permissions.

Vulnerability Specifics to the Application:

Non-self reflected XSS in {{application}} of {{target}} allows an attacker to execute arbitrary JavaScript, then perform {{action}}.

## Business Impact

A malicious attacker could gain full control over all of the application's functionality and data depending on the user's level of permissions. This could lead to financial loss, data theft, and reputational damage of {{customer-name}} and their users.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Using {{browser-used}}, navigate to: {{URL}}
1. Using the HTTP interception proxy, modify the request to contain the JavaScript payload {{parameter}} in {{location}}
1. Forward the request and observe the JavaScript payload being executed

## Proof of Concept (PoC)

Below is a screenshot demonstrating the injected JavaScript executing at {{url}:

{{screenshot}}

This XSS vulnerability could be further abused to perform {{action}} by using the following JavaScript payload:

```javascript
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
