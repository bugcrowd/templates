# Overview
<!--
**Please replace text in each section below**

Private API Key Exposure Vulnerability Report

Resources:
- <https://owasp.org/www-project-top-ten/2017/A3_2017-Sensitive_Data_Exposure>
- <https://owasp.org/www-project-api-security/>
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the exposed private API key, including steps to verify the key's validity.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Open terminal on a system with curl installed and submit the following command:
curl -v 'http://inscopeIP:8080/servlet/submit' -d 'src=acme&key=true&admin&process=apikey'

2. You should receive a response that exposes the private API key:
value=<apikey>

3. To verify the key is valid you can run:
curl -k 'http://inscopeIP:8080/api/json/v2/admin/getUser' -d '<poc=api%40command'

4. This will present you with user information and settings of the administrator account
-->

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an exposed private API key, please include the actual key and proof that the key is current and functional by performing a non-malicious request which returns a successful response - such as retrieving NON-PII user data.

**DO NOT ACCESS PII*
-->

## Demonstrated Impact
<!--
Demonstrating access of modification to sensitive data is NOT permitted without explicit permission from the program.
**DO NOT ACCESS PII*
-->
