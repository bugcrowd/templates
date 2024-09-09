Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. The application discloses a sensitive token in the URL, which, if captured by an attacker, can be used to gain access to the users account through this token, breaching the Confidentiality and Integrity of that account.

## Business Impact

A sensitive token in the URL could lead to data manipulation through the attacker’s ability to manipulate the application through their access to the application. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Observe the exposed token in the URL

## Proof of Concept (PoC)

The following screenshot shows the sensitive token in the URL:

{{screenshot}}
