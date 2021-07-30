# Concurrent Logins

## Overview
Allowing multiple concurrent logins can allow a malicous attacker to reuse stolen or acquired session tokens to hijack requests. Old sessions are commonly found in open source intelligence efforts (OSINT) or through sniffed requests via Man-in-The-Middle(MiTM) attacks.


<!--
**Please replace text in each section below**

Authentication Bypass Report

Resources:
- https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/04-Authentication_Testing/04-Testing_for_Bypassing_Authentication_Schema
- https://www.bugcrowd.com/blog/authentication-bypass/
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable authentication mechanism and how to exploit the vulnerability to obtain access or perform a function that is intended to enforce authentication.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to http://<inscope>.com/Login and login as a user that is part of the 'cargo' permissions group.

2. With an Http proxy enabled, click the dropdown at the top left of the page and click 'Freight Control Panel'

3. You will be prompted to enter a key-phrase. Enter 0000001 and hit Submit while your proxy has Intercept enabled.

4. Multiple requests will be made. Forward them until you see a POST with parameters that includes "its_me=nobody"

4. Modify the parameter to "itsme=boom" and turn off interception

5. You should be presented with a panel that includes live depots and allows for redirection and dispatch of shipping.
-->

1. Login to Bugcrowd.com

1. In another container or incognito tab, login using the same credentials

1. Intercept any request while logged in and replay requests in another tab

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For authentication bypass vulnerabilities, include instructions on how to access the vulnerable authentication mechanism and steps to bypass it in order to perform a function or access data not intended for that user.
Provide screenshots to show the functionality accessed without valid authentication. 
-->

The following image(s) show the full exploit:

{{screenshot}}

## Demonstrated Impact
<!--
Explain why this bypass is a risk and how it can be used as an attack vector. If safe, perform a function that is shown to require authentication.

Values are dependent on the type of authentication bypass or session management misconfiguration found and how the application works
-->

A malicious attacker can use previously acquired sessions to exploit the privacy of a targetted user by continually accessing their account.
