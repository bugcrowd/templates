# Stored XSS (Self)

## Overview
Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow an attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Self-stored XSS in {{application}} of {{target}} allows an attacker to {{action}} by adding or modifying JavaScript permanently to their own account.

## Walkthrough & PoC
1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Insert {{payload}} in the appropriate area
1. Observe the JavaScript payload was executed

## Vulnerability Evidence
Below is a screenshot demonstrating the injected JavaScript executing at {{url}}.

{{screenshot}}

## Demonstrated Impact
An attacker could abuse this self-stored XSS further to {{action}} by using the following JavaScript payload.

```
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
