# Referrer Based Cross-Site Scripting

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data.

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

A malicious attacker could gain full control over all of the application's functionality and data depending on the user's level of permissions.

This XSS vulnerability could be further abused to {{action}} by using the following JavaScript payload.

```javascript
{{payload}}
```

The full exploit taking place is captured in the screenshot below:

{{screenshot}}
