# Insecure Direct Object Reference (IDOR)

## Overview of the Vulnerability

Insecure Direct Object Reference (IDOR) occurs when there are no access control checks to verify if a request to interact with a resource is valid. An IDOR vulnerability within this application can be leveraged by an attacker to manipulate, destroy, or disclose data through their ability to bypass access controls, horizontally or vertically escalate their privileges, and gain access to sensitive information or take over users' accounts.

## Business Impact

IDOR can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Login to User Account A
1. In the URL bar, modify the parameter to a different value:
>
> {{eg.<https://example.com/parameter(UserAccountB)>}}

1. Observe that the application displays information of User Account B, as seen in the screenshot below:  
>
> {{screenshot}}

## Proof of Concept (PoC)

Below is a screenshot demonstrating the exposed object executing:
>
> {{screenshot}}

A malicious attacker could leverage this IDOR vulnerability to extract data by using the following payload:  
  
``` bash
{{payload}}
```

The following screenshot(s) demonstrate(s) this additional impact:

{{screenshot}}
