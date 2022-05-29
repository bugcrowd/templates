# Sensitive Token Exposed in URL User Facing

## Overview of the Vulnerability

Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. The application discloses a sensitive token in the URL that is user facing which can be captured by an attacker. This allows the attacker to gain access to a legitimate user’s account, breaching the Confidentiality and Integrity of their account.

## Business Impact

This vulnerability can lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Login as a user and navigate to: {{URL}}
1. Observe the exposed token in the URL

## Proof of Concept (PoC)

The following screenshot shows the sensitive token in the URL:

{{screenshot}}
