# Read/Edit/Delete Sensitive Information/Complex Object Identifiers(GUID)

## Overview of the Vulnerability

Insecure Direct Object Reference (IDOR) occurs when there are no access control checks to verify if a request to interact with a resource is valid. An IDOR vulnerability within this application leads to unauthorized access to, and manipulation of, sensitive data. An attacker is able to bypass access controls, by retrieving another user's Globally Unique Identifier (GUID).

## Business Impact

IDOR can lead to reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Login to User Account A
1. In the URL bar, modify the parameter to a different value:

{{eg.<https://example.com/parameter(UserAccountB)>}}

1. Observe that the application displays information of User Account B, as seen in the screenshot below:  

{{screenshot}}

## Proof of Concept (PoC)

Below is a screenshot demonstrating the exposed object executing:

{{screenshot}}

A malicious attacker could leverage this IDOR vulnerability to extract data by using the following payload:  
  
``` bash
{{payload}}
```

The following screenshot(s) demonstrate(s) this additional impact:

{{screenshot}}
