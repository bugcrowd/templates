# Disclosure of Secrets for Internal Asset

## Overview of the Vulnerability

Disclosure of secrets for internal assets occurs when sensitive data for the internal assets is not behind an authorization barrier. When this information is exposed it can place sensitive data, such as secrets, at risk. This can occur due to a variety of scenarios such as not encrypting data, secrets committed to GitHub within public repositories, or exposed internal assets.

Disclosure of secrets for this internal asset could be leveraged by an attacker to access the internal application or the environment where the application is hosted.

## Business Impact

Disclosure of secrets for internal assets can lead to indirect financial loss due to an attacker accessing, deleting, or modifying data from within the application. This could happen through an insider threat, existing data breaches, or a malicious internal attacker escalating their privileges. Reputational damage for the business can also occur via the impact to customers’ trust that these events create. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Setup a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{url}}/data/
1. Intercept the response with the HTTP interception proxy
1. Observe the disclosure of sensitive data in the response, as seen below:

{{screenshot}}

## Proof of Concept (PoC)

The screenshots below show the full exploit:

{{screenshot}}
