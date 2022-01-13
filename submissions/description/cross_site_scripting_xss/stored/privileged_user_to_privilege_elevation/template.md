# Stored XSS (Privileged User to Privilege Elevation)

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow an attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Stored XSS in {{application}} of {{target}} allows an attacker to escalate a non-privileged user account to anyone by {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}} with a privileged user account
1. Navigate to {{url}}
1. Insert {{payload}} in the appropriate area
1. Observe the JavaScript payload was executed
1. Verify the payload is stored and accessible to another privileged account

## Vulnerability Evidence

The screenshot below demonstrates the injected JavaScript executing at {{url}}.

{{screenshot}}

## Demonstrated Impact

An attacker could abuse this XSS vulnerabilty further to {{action}} by using the following JavaScript payload.

```
{{payload}}
```

You can find a screenshot of the full exploit taking place below:

{{screenshot}}
