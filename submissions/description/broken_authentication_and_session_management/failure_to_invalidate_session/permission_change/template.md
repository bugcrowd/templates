#### Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

#### Steps to Reproduce

1. Using one browser (Browser A), sign into a user's account using the login page: {{URL}}
1. Using a different browser (Browser B), sign into the same user's account
1. Using Browser A, change the permission level of the account
1. Using Browser B, observe that the user session is still valid with elevated account permissions

#### Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
