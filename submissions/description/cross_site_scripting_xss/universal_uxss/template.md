# Universal Cross-Site Scripting

## Overview

Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data.

Universal XSS (UXSS) is a type of client-side XSS attack which effects the browser, instead of a vulnerable web page. This allows a malicious attacker to potentially gain control of both the vulnerable session as well as other sessions that are open in a user's browser when the attack is triggered.

UXSS in {{application}} of {{target}} allows malicious attacker to {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Observe that the JavaScript payload was executed

## Vulnerability Evidence

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

XSS vulnerabilities can be escalated by an attacker who could pivot to bypassing Cross-Site Request Forgery (CSRF) protections, or perform account takeovers. This would give them the ability to perform any action that a logged in user can perform. For example, an attacker could gain full control over all of the application's functionality and data, depending on the user's level of permissions.

A UXSS vulnerability effects multiple user sessions open within a browser at the time the attack is triggered. This means that it effects other web sessions even if they were previously thought to be secure, allowing an attacker to execute malicious scripts across a user's browser.

A malicious attacker could abuse this UXSS further in {{application}} to {{action}} by performing the following steps:

1. Step one
1. Step two

Here is a screenshot of the full exploit taking place:

{{screenshot}}
