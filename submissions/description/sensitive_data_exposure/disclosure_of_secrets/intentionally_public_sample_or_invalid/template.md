# Disclosure of Secrets for an Invalid or Intentionally Publicly Sample

## Overview of the Vulnerability

Disclosure of secrets occurs when sensitive data is not behind an authorization barrier, placing sensitive data, such as secrets or API keys, at risk. This application discloses an invalid, or intentionally public sample, of secrets that are used for the application. While seemingly harmless, an attacker can use these examples to build wordlists, which can be used to bruteforce requests to the application until a valid secret is processed successfully.

## Business Impact

Disclosure of secrets can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application via the access gained using the non-corporate user account. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Navigate to the following URL: {{URL}}
1. Observe the following invalid/Intentionally public secret was revealed:

{{value}}

## Proof of Concept (PoC)

The screenshots below displays the secrets disclosed:

{{screenshot}}
