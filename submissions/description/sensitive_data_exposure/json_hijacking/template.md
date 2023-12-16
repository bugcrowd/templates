# Sensitive Data Disclosure via JSON Hijacking

## Overview of the Vulnerability:

Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. JSON Hijacking allows a malicious attacker to exfiltrate sensitive data using Cross Site Request Forgery (CSRF) and overriding the Object prototype by using `__defineSetter__`.

This application is susceptible to JSON hijacking which enables an attacker to retrieve sensitive data by tricking a user to click on a crafted link. Once a user clicks on the link, data from the user’s account is read and passed to the attacker. This allows an attacker to collect Personally Identifiable Information (PII) and sensitive metadata to escalate privileges or launch phishing campaigns on targeted users.

## Business Impact:

When an application fails to mask internal IP addresses it leaves the internal network more susceptible to future network based attacks.

## Steps to Reproduce:

1. Host the following payload on the attacker server:

{{payload}}

1. Make a request on behalf of the user to the attacker served file:

{{screenshot}}

1. Observe that the user requested data from the vulnerable endpoint and the response is in JSON
1. On the attacker hosted server, look at the logs to see that the JSON was successfully exfiltrated:

{{screenshot}}

## Proof of Concept (PoC):

The following screenshot shows the sensitive data disclosed:

{{screenshot}}
