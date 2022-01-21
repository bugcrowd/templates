# Universal XSS (UXSS)

## Overview

<<<<<<< Updated upstream
Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

Universal XSS (UXSS) in {{application}} of {{target}} allows an attacker to {{action}}.
=======
Cross-Site Scripting (XSS) attacks are a type of injection, in which malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to pretend to be the user, and to carry out any actions that the user is able to perform, to access any of the user's data. 

UXSS in {{application}} of {{target}} allows malicious attacker to {{action}}
>>>>>>> Stashed changes

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. Navigate to {{url}}
1. Observe that the JavaScript payload was executed

## Vulnerability Evidence

<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
Below is a screenshot demonstrating the injected JavaScript executing at {{url}}:

{{screenshot}}

## Demonstrated Impact

<<<<<<< Updated upstream
An attacker could abuse this UXSS further to {{action}} by performing the following steps:
=======
XSS vulnerabilities can be escalated by an attacker who could pivot to bypassing Cross-Site Request Forgery (CSRF) protections, or perform account takeovers (usually combined with missing `httpOnly` flag on session cookies). This would give them the ability to perform any action that a logged in user can perform. An attacker could gain full control over all of the application's functionality and data depending on the user's level of permissions. 

A malicious attacker could abuse this XSS further to {{action}} by performing the following steps.
>>>>>>> Stashed changes

1. Step one
1. Step two

Here is a screenshot of the full exploit taking place:

{{screenshot}}
