# Stored XSS (Non-Privileged User to Anyone)

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow an attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Stored XSS in {{application}} of {{target}} allows an attacker to escalate a non-privileged user account to anyone by {{action}}. An attacker has the ability to copy, edit, add, and delete data from within the application using these elevated privileges.

## Walkthrough & PoC

1. Log into {{application}} at {{url}} with the non-privileged account
1. Navigate to {{url}} and insert a JavaScript payload at {{parameter}}
1. Observe the JavaScript payload being executed
1. Log out of the non-privileged account
1. Log into a privileged account and navigate to {{url}} which contains the payload
1. Log out of the privileged account and log into the non-privileged account
1. Observe the non-privileged account has gained escalated privileges

## Vulnerability Evidence

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}.

{{screenshot}}

## Demonstrated Impact

An attacker could abuse this XSS further to {{action}} by using the following JavaScript payload.

```
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
