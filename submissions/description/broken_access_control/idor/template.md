# Insecure Direct Object References (IDOR)

## Overview

An Insecure Direct Object Reference (IDOR) occurs when an application directly exposes a reference to an object, such as user details or files. These objects can be directly accessed regardless of the authorisation, allowing a malicious attacker to potentially access, edit, or delete other users' objects.

IDOR in {{application}} of {{target}} allows malicious attacker to {{action}}.

## Walkthrough & PoC

1. Log in to {{application}} at {{url}}
1. Send a request to {{url}} with the following parameter {{parameter}}
1. Modify the {{parameter}} to a different value
1. Observe PII is displayed.

## Vulnerability Evidence

Below is a screenshot demonstrating the exposed object executing at {{url}}.

{{screenshot}}

## Demonstrated Impact 

A malicious attacker could extract all data that can be referenced by the parameter that is able to be manipulated. Data could contain PII of users, passwords, files, or financial information. When assessing the impact if this IDOR vulnerability, consideration also needs to be applied to the impact of public exposure the data.

A malicious attacker could abuse this IDOR further to {{action}} by using the following {{payload}} to extract sensitive information.

```
{{payload}}
```

The screenshot below demonstrates the objects accessed:

{{screenshot}}

