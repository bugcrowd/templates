Internationalized Domain Name (IDN) homograph attack is a type of typosquatting attack that spoofs the name of a known domain by using homoglyph characters that mimic the actual letter. Through this type of attack, users are often socially engineered to perform an action due to the inherent trust they have in the business and its brand.

A successful IDN Homograph attack can allow an attacker to social engineer users to navigate to a malicious website where the attacker can use the trust of the credible domain name to phish users for their credentials.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Perform {{action}} and capture the request in the HTTP interception proxy
1. Insert {{payload}} in {{parameter}} and forward or replay the following request to the endpoint:

```HTTP
{{request}}
```

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the IDN Homograph attack:

{{screenshot}}
