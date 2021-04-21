# Overview
<!--
**Please replace text in each section below**

Local File Inclusion Report

Resources:

- <https://owasp.org/www-community/vulnerabilities/PHP_File_Inclusion>
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/11.1-Testing_for_Local_File_Inclusion>
-->

Local File Inclusion (LFI) allows a malicious attacker to include files on a server though the web browser. This vulnerability exists when a web application includes a file without correctly sanitising the input, allowing a malicious attacker to manipulate the input and inject path traversal characters and include other files from the web server. Such a file includes `/etc/password` which contains a list of users on that machine. If the malicious attacker has upload capabilities, it is possible for a web shell to be executed.

An LFI was identified at at {{url}} at {{parameter}} using {{payload}}. This allows a malicious attacker to view sensitive information and/or execute a web shell.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

-->
Example:

1. On your browser, browse to the URL `{{url}}/../../ect/hostname`
2. You will see the hostname of the server running this website

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a Local File Inclusion vulnerability, you may take output from files that do not contain sensitive information, some examples would be /etc/hostname, /etc/password, or /etc/issues.
**DO NOT ACCESS PII**
-->

The screenshot/video below demonstrates the LFI being executed at {{url}} at {{parameter}} using {{payload}}.

{{screenshot}}


## Demonstrated Impact
<!--
Local File Inclusion vulnerabilities allow an attacker to read any files on the machine hosting the vulnerable service, this can include secrets such as passwords, certificate information, and Personally Identifiable Information (PII).

**DO NOT ACCESS PII**
-->
As LFI has been proven - it allows a malicious attacker to read any files on the machine hosting the vulnerable service, this can include secrets such as passwords, certificate information, and Personally Identifiable Information (PII). 
