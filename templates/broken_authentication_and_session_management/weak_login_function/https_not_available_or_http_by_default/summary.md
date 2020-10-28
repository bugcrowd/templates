# Overview
<!--
**Please replace text in each section below**

HTTPS not Avalible or HTTP by default on Login Page Vulnerability Report

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
4. Browse to the sensitive page or action <www.inscope.com/accountSettings>
5. Complete the change 
6. Sign in again on a different browser and see the change on <www.inscope.com/accountSettings>
 -->

## Vulnerability Evidence

<!-- 
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

This can include a video showing the action taking place after signing out, or pictures showing the logout process not removing a token from the cache and performing a sensitive action.
 -->

## Demonstrated Impact
<!--
Demonstrating increased impact results in higher rewards! 

Failure to invalidate a session after a logout can allow an attacker, who has access to that local machine, full account access, and perform any action that the user can.
-->
