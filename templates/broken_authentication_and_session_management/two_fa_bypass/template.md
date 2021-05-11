# Two Factor Authentication Bypass

## Overview
Two Factor Authentication (2FA) is a security control used to prevent access to an account when a password or username is known by an attacker. It enforces security in layers by making sure the user logged in will have a physical device or code only the user would have.

<!--
**Please replace text in each section below**

Failure to Invalidate Session on Logout (Server-Side Only) Vulnerability Report

Resources:

- <https://owasp.org/www-project-top-ten/2017/A2_2017-Broken_Authentication>
-->

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Attempt to sign in to the website at <www.inscope.com/login>
2. Go to your local storage in your browser and take a copy of the session token
3. Click on the logout button 
4. Add the previous session token to your local storage in your browser
5. Browse to the sensitive page or action <www.inscope.com/accountSettings>
6. Complete the change 
7. Sign in again on a different browser and see the change on <www.inscope.com/accountSettings>
 -->

1. Sign in to website at Bugcrowd.com 

1. {{action}} to set Two Factor Authentication (2FA) up

1. Navigate to the vulnerable endpoint at Bugcrowd.com/vulnerable-endpoint 

1. {{action}} to bypass 2FA


## Vulnerability Evidence

<!-- 
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

This can include a video showing the action taking place after adding the session token, or pictures showing the addition of your session token the local storage in your browser and performing a sensitive action.
 -->

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact
<!--
Demonstrating increased impact results in higher rewards! 

Failure to invalidate a session after a logout can allow an attacker, who has access to that local machine, full account access, and perform any action that the user can.
-->

A malicious attacker can use a known username and password acquired from either phishing or OSINT to access a user's account and using this vulnerablility can bypass 2FA to gain full access.
