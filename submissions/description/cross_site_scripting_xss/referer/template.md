# Cross-Site Scripting (Referrer)

## Overview

<<<<<<< Updated upstream
Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Referrer based XSS in {{application}} of {{target}} allows an attacker to {{action}}.
=======
Cross-Site Scripting (XSS) attacks are a type of injection, in which malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to pretend to be the user, and to carry out any actions that the user is able to perform, to access any of the user's data. 

Referrer based XSS in {{application}} of {{target}} allows malicious attacker to {{action}}.
>>>>>>> Stashed changes

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. Intercept {{url}} through an intercepting proxy
1. Append a JavaScript payload to the end of the Referrer header
1. Forward the request and observe that the JavaScript payload was executed

## Vulnerability Evidence

<<<<<<< Updated upstream
The screenshot below demonstrates the injected JavaScript executing at {{url}}.
=======
The screenshot below demonstrates the injected JavaScript executing at {{url}}:
>>>>>>> Stashed changes

{{screenshot}}

## Demonstrated Impact

<<<<<<< Updated upstream
An attacker could abuse this XSS further to {{action}} by using the following JavaScript payload.
=======
XSS vulnerabilities can be escalated by an attacker who could pivot to bypassing Cross-Site Request Forgery (CSRF) protections, or perform account takeovers (usually combined with missing `httpOnly` flag on session cookies). This would give them the ability to perform any action that a logged in user can perform. An attacker could gain full control over all of the application's functionality and data depending on the user's level of permissions. 

A malicious attacker could abuse this XSS further to {{action}} by using the following JavaScript payload.
>>>>>>> Stashed changes


```javascript
{{payload}}
```

You can find a screenshot of the full exploit taking place below:

{{screenshot}}

