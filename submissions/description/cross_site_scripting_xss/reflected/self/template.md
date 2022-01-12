# Reflected XSS (Self)

## Overview

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->
Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

A self reflected XSS in {{application}} at {{url}} allows an attacker to {{action}} by adding or modifying JavaScript temporarily to their own account.

## Walkthrough & PoC

<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Log in to {{application}} at {{url}} using an existing account
1. Navigate to {{url}}
1. Observe the JavaScript payload that was executed

## Vulnerability Evidence

<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a reflected XSS vulnerability, please include a simple URL or HTML payload that can be executed to easily demonstrate and reproduce the issue. 
-->

Below is a screenshot demonstrating the injected JavaScript executing at {{url}}.

{{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the XSS to perform additional actions (such as an account takeover or CSRF bypass to perform a sensitive action). If this is possible, provide a full proof-of-concept here.
--> 

A malicious attacker could abuse this XSS further to {{action}} by using the following JavaScript payload.

```
{{payload}}
```

Here is a screenshot of the full exploit taking place:

{{screenshot}}

## Recommendations
All user input fields should be sanitized based on what the field is likely to contain. For example, a date of birth field should only contain a maximum of 10 characters consisting of numbers and forward slashes. Additionally, drop down or pick lists can be used for allowable inputs to ensure expected values are sent to the server.

Encode outputs of HTTP responses to prevent them from being interpreted as active content.

Use appropriate HTTP response headers to ensure the browser correctly interprets responses. For example: 

```

 x-content-type-options: nosniff 

 x-xss-protection: 1; mode=block 

 Content-Security-Policy: default-src ‘self’; script-src ‘self’

```

Ensure access controls are managed on the principle of least privilege, and are routinely audited for unnecessary access.

For more information, please see:
https://cheatsheetseries.owasp.org/cheatsheets/Cross_Site_Scripting_Prevention_Cheat_Sheet.html

