# Sensitive Data Exposure: Disclosure of Known Public Information

## Overview of the Vulnerability:

Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. This can occur due to a variety of scenarios such as not encrypting data, secrets committed to GitHub within public repositories, or exposed internal assets.

Known public information is disclosed by this application which can be used by an attacker to build a profile of the business, the application, and its users for further attacks.

## Business Impact:

Disclosure of known public information can result in reputational damage for the business through an attacker’s ability to impact customers' trust through further attack methods, such as social engineering.

## Steps to Reproduce:

1. Use a browser to navigate to: {{url}}
1. Observe that publicly known information is being disclosed

## Proof of Concept (PoC):

The screenshots below displays the publicly known information disclosed:

{{screenshot}}
