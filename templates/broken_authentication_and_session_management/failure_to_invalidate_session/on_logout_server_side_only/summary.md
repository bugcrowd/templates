# Overview
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

## Vulnerability Evidence

<!-- 
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

This can include a video showing the action taking place after adding the session token, or pictures showing the addition of your session token the local storage in your browser and performing a sensitive action.
 -->

## Demonstrated Impact
<!--
Demonstrating increased impact results in higher rewards! 

Failure to invalidate a session after a logout can allow an attacker, who has access to that local machine, full account access, and perform any action that the user can.
-->
