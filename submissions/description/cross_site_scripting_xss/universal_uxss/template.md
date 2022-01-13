# Universal XSS (UXSS)

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Universal XSS (UXSS) in {{application}} of {{target}} allows an attacker to {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Observe that the JavaScript payload was executed

## Vulnerability Evidence

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

An attacker could abuse this UXSS further to {{action}} by performing the following steps:

1. Step one
1. Step two

Here is a screenshot of the full exploit taking place:

{{screenshot}}
