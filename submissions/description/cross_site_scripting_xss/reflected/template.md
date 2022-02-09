# Reflected Cross-Site Scripting

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. Once executed, this input is reflected in a user’s browser without it being safely encoded. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data.

XSS in {{application}} of {{target}} allows an attacker to {{action}}.

## Walkthrough & PoC

1. Navigate to {{url}}
1. Insert {{payload}} into {{parameter}} in {{url}}
1. Observe that the JavaScript payload was executed

## Vulnerability Evidence

The screenshot below demonstrates the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

A malicious attacker could gain full control over all of the application's functionality and data depending on the user's level of permissions.

This XSS vulnerability could be further abused to perform {{action}} by using the following JavaScript payload:

```javascript
{{payload}}
```

You can find a screenshot of the full exploit taking place below:

{{screenshot}}
