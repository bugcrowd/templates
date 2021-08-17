# Auto backup allowed by default
## Overview
<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]


-->
Auto backup allowed by default in {{application}} of {{target}} allows a malicious attacker to {{action}}

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Login to in-scope asset at <www.bugcrowd.com/login>
1. Browse to account page
1. Modify ID token to add single quote
1. View error which states 'SQL Syntax Error'
1. Replace ID value with `1' waitfor delay '00:00:10'; `
-->

1. Install {{application}} on an android mobile device
1. In the mobile device, enable USB debugging
1. Use the android ADB tool to backup the data of the mobile device
1. In this backup, view that the data from {{application}} was included in the backup automatically


## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For auto backup being allowed by default, include a screenshot of either the application's data included within an android backup file or a screenshot of the application's manifest file showing the line 'android:allowBackup="true"'' in the application's manifest file.
-->

You can observe proof that the application has auto backup enabled by default below:

{{screenshot}}
## Demonstrated Impact
<!--
Attempt to abuse the information stored within the android application backup in some impactful way. If this is possible, provide a full proof-of-concept here.
-->

A malicious attacker could abuse an application that has auto backup allowed by default to access sensitive data from the application once they have physical access to the device. This could allow a malicious attacker to bypass any in-app authentication and access sensitive data. With this sensitive data, a malicious attacker could perform {{action}}.
