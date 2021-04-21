# Unsafe File Upload with No Size Limits

## Overview
<!--
**Please replace text in each section below**

Path Traversal Vulnerability Report

Resources:

- <https://owasp.org/www-community/attacks/Path_Traversal>
- <https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/05-Authorization_Testing/01-Testing_Directory_Traversal_File_Include>
-->

A malicous attacker can upload large files to the server via file upload functionality in {{application}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the URL <https://data1.inscope.com/datastore1/dataviewer?data=regulardata/>
1. Now change the URL from `data=regulardata` to `data=%2e%2e%2fsecuredata%2f` which is URL Encoded from `../securedata/`
1. You will now see we can view to a new directory that was not intended to be viewed using path traversal 

-->

1. Generate a large file using {{command}}

1. Navigate to file upload functionality at: {{value}}

1. Upload the large file generated in the first step

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

Attaching a screenshot of the webpage with the URL bar in view will be sufficient for this report.
-->

The following image(s) shows the full exploit:

{{screenshot}}

## Demonstrated Impact
<!--
This path traversal vulnerability allows an attack to gain acces to a folder called `securedata` in a directory it was not intended to access.
-->

An malicious attacker can serve a Denial of Service (DoS) attack using large files being uploaded to the server without file size limit. This may cause outages and slowdowns.

