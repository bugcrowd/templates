# XSS - Referrer

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Referrer based XSS in {{application}} of {{target}} allows an attacker to {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. Intercept {{url}} through an intercepting proxy
1. Append a JavaScript payload to the end of the Referrer header
1. Forward the request and observe that the JavaScript payload was executed

## Vulnerability Evidence

The screenshot below demonstrates the injected JavaScript executing at {{url}}.

{{screenshot}}

## Demonstrated Impact

An attacker could abuse this XSS further to {{action}} by using the following JavaScript payload.


```javascript
{{payload}}
```

You can find a screenshot of the full exploit taking place below:

{{screenshot}}

