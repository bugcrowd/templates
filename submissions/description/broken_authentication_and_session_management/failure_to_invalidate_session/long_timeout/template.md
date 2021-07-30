# Failure to Invalidate Sessions via Long Timeout

## Overview
Sessions commonly fail to invalidate active sessions. A malicious attacker can replay a previously acquired request to gather information about a target and endpoints an unauthenticated user will not usually have access to.


<!--
**Please replace text in each section below**

Authentication Bypass Report

Resources:
- https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/04-Authentication_Testing/04-Testing_for_Bypassing_Authentication_Schema
- https://www.bugcrowd.com/blog/authentication-bypass/
-->
Authentication methods can be bypassed through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, by manipulating the form, or by counterfeiting sessions. A malicious attacker can perform a variety of actions through bypassing authentication methods, and is only limited by the permissions of the user. This could include viewing/editing senstive customer data, viewing/editing other user permissions, and taking over user accounts. 

The authentication method for {{application}} at {{url}} is being bypased through {{action}}. This allows a malicious attacker to perform {{action}} which an unauthenticated user does not have permissions to conduct.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable authentication mechanism and how to exploit the vulnerability to obtain access or perform a function that is intended to enforce authentication.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

Example:

1. Browse to {{url}}/Login and login as a user that is part of the 'cargo' permissions group.
1. With an Http proxy enabled, click the dropdown at the top left of the page and click 'Freight Control Panel'
1. You will be prompted to enter a key-phrase. Enter 0000001 and hit Submit while your proxy has Intercept enabled.
1. Multiple requests will be made. Forward them until you see a POST with parameters that includes {{parameter}}
1. Modify the parameter to "{{payload}}" and turn off interception
1. You should be presented with a panel that includes live depots and allows for redirection and dispatch of shipping.

1. Login to Bugcrowd.com

1. Capture any authenticated request

1. Wait for 10 mins

1. Replay the request

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For authentication bypass vulnerabilities, include instructions on how to access the vulnerable authentication mechanism and steps to bypass it in order to perform a function or access data not intended for that user.
Provide screenshots to show the functionality accessed without valid authentication. 
-->

The screenshot/video below demonstrates the authentication method being bypassed at {{url}}.

Unauthenticated view:
{{screenshot}}

Bypassing authentication:
{{screenshot}}

Authenticated view:
{{screenshot}}

## Demonstrated Impact
<!--
Explain why this bypass is a risk and how it can be used as an attack vector. If safe, perform a function that is shown to require authentication.

Values are dependent on the type of authentication bypass or session management misconfiguration found and how the application works
-->
A malicious attacker could abuse this authentication bypass further to {{action}} by abusing the users permissions through {{payload}}.

{{screenshot}}
