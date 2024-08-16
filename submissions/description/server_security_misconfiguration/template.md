Server security misconfigurations result from errors in the setup and deployment of a web server. These misconfigurations can lead to a broad range of issues which could allow a malicious attacker to manipulate the server and retrieve, change, or delete content.

#### Business Impact

Depending on the type of misconfiguration found in the server, exposure or manipulation of data from within it could lead to financial loss and reputational damage for the business.

#### Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP, to record and intercept web traffic from your browser
1. Use a browser to navigate to: {{URL}}
1. Using the HTTP intercept proxy, capture the response
1. Observe the server security misconfiguration

#### Proof of Concept (PoC)

The screenshot below demonstrates the server security misconfiguration:

{{screenshot}}
