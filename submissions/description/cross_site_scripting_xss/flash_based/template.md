# Flash-Based XSS

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow an attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Flash-Based XSS in {{application}} of {{target}} allows an attacker to {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}} if required
1. Upload a flash file (.swf)
1. Navigate to the {{url}} with {{parameter}} at the end of it
1. Append a JavaScript payload to the end of the parameter
1. Observe that the JavaScript payload was executed

## Vulnerability Evidence

The screenshot below demonstrates the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

A malicious attacker could abuse this XSS further to {{action}} by using the following JavaScript payload:

```javascript
{{payload}}
```

You can find a screenshot of the full exploit taking place below:

{{screenshot}}

