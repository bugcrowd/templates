# Reflected Cross-Site Scripting (Non-self)

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. Once executed, this input is reflected in a user’s browser without it being safely encoded.

Non-self reflected XSS in {{application}} of {{target}} allows an attacker to execute arbitrary JavaScript, then view and modify any information that the user is able to view and modify.

## Walkthrough & PoC

1. Enable a HTTP interception proxy
1. Navigate to {{url}}
1. Modify the request to contain the JavaScript payload {{parameter}}
1. Forward the request and observe the JavaScript payload being executed

## Vulnerability Evidence

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. A malicious attacker could gain full control over all of the application's functionality and data depending on the user's level of permissions.

This XSS vulnerability could be further abused to perform {{action}} by using the following JavaScript payload:

```javascript
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
