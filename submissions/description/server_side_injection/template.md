# Server-Side Injection

## Overview of the Vulnerability

Server-side injection allows attackers to inject malicious code into server-side scripts. As a result, an attacker is able to manipulate the application to include a malicious script which is executed by the server. This can lead to unauthorized access or manipulation of data.

## Business Impact

The vulnerability can result in data theft and manipulation, and reputational damage for the business as customers' trust is negatively impacted by an attacker’s ability to access and modify data on a server.

## Steps to Reproduce

1. In a browser, navigate to the URL: {{url}}
1. Identify that the following input field that is vulnerable to injection: {{vulnerable input field}}
1. Inject the following code into the vulnerable input:
{{code}}
1. Submit the form or input data containing the injected code
1. Observe the response from the server, noticing any unexpected behavior or error messages

## Proof of Concept

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
