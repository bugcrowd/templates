# Sensitive Data Exposure

## Overview of the Vulnerability

Sensitive data exposure can occur when sensitive data is not encrypted, or behind an authorization barrier. When this information is exposed it can place sensitive data, such as secrets, at risk. This can occur due to a variety of scenarios such as not encrypting data, SSL not being used for authenticated pages, or passwords being stored using unsalted hashes. Examples of such data include, but are not limited to: personally identifiable information (PII), Social Security numbers, medical data, banking information, and login credentials.

Sensitive data relating to the business was exposed. This data could be exfiltrated and used by an attacker to sell access to databases and database content, or use credentials identified to take over accounts, amongst other attack vectors.

## Business Impact

Disclosure of secrets can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Use a browser to navigate to: {{url}}/data/
1. Observe that secrets are being disclosed

## Proof of Concept (PoC)

The screenshots below displays the secrets disclosed:

{{screenshot}}
