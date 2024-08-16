Most True Random Number Generators (TRNG) have a finite limit to their random number generation rate. Therefore, a TRNG should only be used when entropy is required for security purposes. When an application draws from a TRNG for a non-security purpose, it depletes the entropy of the source, increasing the likelihood that an attacker would be able to predict of guess number generated.

#### Business Impact

This vulnerability can lead to reputational damage of the company through the impact to customers’ trust, and the ability of an attacker to view data. The severity of the impact to the business is dependent on the sensitivity of the accessible data being transmitted by the application.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Setup {{software}} to intercept and log requests
1. Use a browser to navigate to: {{URL}}
1. {{action}} to view unencrypted requests

#### Proof of Concept (PoC)

The screenshot below demonstrates the True Random Number Generator being used for a non-security purpose:

{{screenshot}}
