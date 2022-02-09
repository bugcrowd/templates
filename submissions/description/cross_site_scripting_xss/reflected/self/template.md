# Reflected Cross-Site Scripting (Self)

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. Once executed, this input is reflected in a user’s browser without it being safely encoded.

A self reflected XSS in {{application}} at {{url}} allows an attacker to {{action}} by adding or modifying JavaScript temporarily to their own account.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}} using an existing account
1. Navigate to {{url}}
1. Observe the JavaScript payload that was executed

## Vulnerability Evidence

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

This XSS vulnerability could be further abused to perform {{action}} by using the following JavaScript payload:

```javascript
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
