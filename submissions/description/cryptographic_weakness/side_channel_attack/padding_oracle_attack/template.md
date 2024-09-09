A cryptographic weakness was identified which can allow an attacker to use a padding oracle attack to derive the encryption key. This is due to the application revealing information during the decryption process about the validity of the padding data. This can allow an attacker to break the confidentiality of requests sent to and from the endpoint.

## Business Impact

This vulnerability can lead to reputational damage of the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

## Proof of Concept (PoC)

The screenshot below demonstrates the padding oracle attack:

{{screenshot}}
