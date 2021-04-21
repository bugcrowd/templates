# Detailed Server Configuration

## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
-->

Improper error handling can introduce a variety of security problems for a web site such when detailed internal error messages such as stack traces, database dumps, and error codes are displayed to a malicious attacker.

Detailed server configuration was found at {{url}} in {{application}}. This allows a malicious attacker to view which version of {{software}} is running, physical paths, environment variables, and the full {{software}} configuration settings.

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

-->

Example:
1. Visit {{url}}
2. View detailed server configuration
   
## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an SQL Injection vulnerability, please include specific NON-PII information discovered in the database, such as Database Version, a listing of database tables, or an injected 'sleep' payload.

You may present your evidence as output from a tool such as SQLMap, unless the program forbids the use of these tools, and it may be in the format of terminal output, screenshots, or video.

**DO NOT ACCESS PII**
-->

The screenshot below displays the detailed server configuration page:

{{screenshot}}

## Demonstrated Impact
<!--
Demonstrating access to data other than the database version or database tables is NOT permitted without explicit permission from the program.
**DO NOT ACCESS PII**

A malicious attacker could ...
--> 

A malicious attacker could potentially leverage this detailed server configuration page along with another vulnerability to exploit version {{version}} of {{software}}.
