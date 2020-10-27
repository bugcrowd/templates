
# Overview
<!--
**Please replace text in each commented section below**

Reflected Cross Site Scripting Report

Resources:

 - <https://owasp.org/www-community/attacks/xss/>

-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.inscope.com/login>
1. Browse to search page.
1. Enter "><script>alert(1)</script> into search field & press enter
1. Witness that arbitrary javascript has executed and opened an alert popup.
-->

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability, proven by exploiting the vulnerability, and not be theoretical in nature.

For a Reflected Cross Site Scripting vulnerability, the base priority of P3 is a demonstration of arbitrary javascript execution with an `alert()` (or equivilent) payload.

-->

## Demonstrated Impact
<!--
Demonstrating increased impact results in higher rewards! 

Cross Site Scripting vulnerabilities can lead to the ability to bypass CSRF protections, performing account takeovers (usually combined with missing `httpOnly` flag on session cookies), ultimately an attacker can perform any action that logged in user can perform.

--> 

