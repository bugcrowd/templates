# Insecure Direct Object References (IDOR)

## Overview of the Vulnerability 

Insecure Direct Object Reference (IDOR) occurs when there are no access control checks in place to verify if the request of an object within the application can be viewed by the person requesting access. Depending on the type of IDOR within an application, an attacker could perform the following actions:

-   Gain unauthorized access to data from the application and retrieve privileged information
-   Perform unauthorized operations, such as escalating their privileges within the application, or forcing a password change on a user’s account in order to takeover that account
-   Manipulate internal application objects and elevate their privileges, alter data, or gain access to and manipulate the application’s APIs
-   Gain direct access to files and manipulate the file system, such as uploading, downloading, adding, or deleting data, including other user’s data
    
Vulnerability Specifics to the Application:

IDOR in {{application}} of {{target}} allows a malicious attacker to {{action}}.

## Steps to Reproduce

<!-- Prerequisites and environment used for testing - fill in as needed

Prerequisites:
-   Example, having access to two different levels of user permissions
-   Example, having HTTP interception proxy (such as Burp Suite or OWASP ZAP) set up with the browser
    
Researcher’s Environment:
-   Browser and version:
-   Operating System and version:
-   Tools used and versions of each: 
-   User Agent: 
-->

1. Using {{browser-used}}, log in to {{application}} at {{url}}
1. Send a request to {{url}}, with the following parameter, {{parameter}}:
<https://example.com/parameter(user1)>
1. In the URL bar, modify the parameter to a different value, {{value}}:
<https://example.com/parameter(user2)>
1. Observe that the application displays information of user2, as seen in the screenshot below:  

{{screenshot}}

## Proof of Concept (PoC)

Below is a screenshot demonstrating the exposed object executing at, {{url}}:

{{screenshot}}

## Demonstrated Impact 

An attacker could extract all data which can be referenced by the parameter that is subject to manipulation. Exposure of this data could lead to financial loss, theft of personally identifiable information (PII), and reputational damage of {{program}} and their users.
A malicious attacker could abuse this IDOR vulnerability further to {{action}} by using the following payload to extract data:  
  
``` bash
{{payload}}
```

The following screenshot demonstrates this additional impact:

{{screenshot}}
