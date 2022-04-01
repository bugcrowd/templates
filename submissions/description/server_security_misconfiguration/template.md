# Generic Server Security Misconfiguration

## Overview of the Vulnerability

Server security misconfigurations result from errors in the setup and deployment of a web server. These misconfigurations can lead to a broad range of issues which could allow a malicious attacker to manipulate the server and retrieve, change, or delete content.

Server security misconfiguration in {{application}} of {{target}} allows malicious attacker to {{action}}.

## Business Impact

Depending on the type of misconfiguration found in server, exposure or manipulation of data from within it could lead to financial loss, identity theft, and reputational damage of {{program}} and their users.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Using {{browser-used}}, navigate to: {{url}}
1. Using the HTTP intercept proxy, capture the response and observe that there is a server security misconfiguration that allows an attacker to perform {{action}}
1. Alternatively, in-browser tools can be used to observe the server security misconfiguration by performing {{steps-to-observe-within-browser}}

## Proof of Concept (PoC)

The screenshot below demonstrates the server security misconfiguration at {{url}}:

{{screenshot}}

A malicious attacker could abuse this server security misconfiguration further to {{action}} by using the following payload:

{{payload}}

You can find a screenshot of the full exploit taking place below:

{{screenshot}}
