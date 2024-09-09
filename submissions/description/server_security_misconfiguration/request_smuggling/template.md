HTTP request smuggling is a vulnerability that occurs due to the discrepancies between the way two or more servers interprets a sequence of requests, such as there the servers using different mechanisms to determine where the boundaries are between requests.

These misconfigurations can lead to a broad range of issues that result in an attacker bypassing security controls, taking over other user's accounts, or gaining unauthorized access to sensitive content.

## Business Impact

Depending on the type of misconfiguration found in the server, exposure or manipulation of data from within it could lead to financial loss and reputational damage for the business.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Use a browser to navigate to: {{URL}}
1. Using the HTTP intercept proxy, alter the HTTP request header as follows: {{HTTP request}}
1. Send the request
1. Observe the response

## Proof of Concept (PoC)

The screenshots below demonstrates the HTTP request smuggling vulnerability:

{{screenshot}}
