# Overview
<!--
**Please replace text in each section below**

Remote Code Execution Report

Resources:

- <https://owasp.org/www-community/vulnerabilities/PHP_File_Inclusion>
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/07-Input_Validation_Testing/11.1-Testing_for_Local_File_Inclusion>
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Using a Machine with access to cURL, run the command `curl www.inscope.com/cmd?=ping%20192.168.1.1;cat%20/etc/hostname`
1. In the terminal, you will see the output of the ping command, then the hostname of the server hosting this website
-->

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For a Remote Code Execution vulnerability, you may execute some commands to prove that the code execution works, but do not access or attempt to access sensitive information, an example of some commands that can show access to the server are; `cat /etc/hostname`, `cat /etc/password`, `cat /etc/issues`, and `ifconfig`.
**DO NOT ACCESS PII**
-->

## Demonstrated Impact
<!--
Using the Remote Code Execution vulnerability, you are able to remotely execute code on this server, enabling an attacker to extract passwords, reconfigure running services, move laterally into attached networks, and potentially take over the server.

**DO NOT ACCESS PII**
-->
