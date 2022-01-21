# Stored XSS (Privileged User to No Privilege Elevation)

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow an attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. 

Stored XSS in {{application}} at {{url}} allows an actor to {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}} with a privileged user account
1. Navigate to {{url}}
1. Insert {{payload}} in the appropriate area
1. Observe the JavaScript payload was executed
1. Verify the payload is stored and accessible to anyone

## Vulnerability Evidence

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

XSS vulnerabilities can be escalated by an attacker who could pivot to bypassing Cross-Site Request Forgery (CSRF) protections, or perform account takeovers (usually combined with missing `httpOnly` flag on session cookies). This would give them the ability to perform any action that a logged in user can perform. An attacker could gain full control over all of the application's functionality and data depending on the user's level of permissions. 

This instance of XSS could be abused further to {{action}} by using the following JavaScript payload.

```
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}
