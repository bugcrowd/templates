Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. The application discloses a sensitive token in the URL upon the password reset function which, if captured by an attacker, can be used to reset a legitimate user’s account password to one they control, successfully taking over the user’s account.

#### Business Impact

This vulnerability can lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

#### Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Navigate to the password reset function
1. Observe the exposed token in the URL

#### Proof of Concept (PoC)

The following screenshot shows the sensitive token in the URL:

{{screenshot}}
