The application did not allow users to configure Two Factor Authentication (2FA).

2FA adds an extra layer of security to user accounts by prompting them to enter a uniquely generated one-time password (OTP) after they have successfully inputted their username and password. This increases the complexity of an attacker being able to compromise an account. Consequently, an attacker may take advantage of a lack of 2FA implementation to potentially take over user accounts.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Steps to Reproduce**

1. Navigate to the following URL: {{URL}}
1. Identify the vulnerability by performing {{action}}
1. Observe the misconfiguration

**Proof of Concept (PoC)**

The following screenshot shows the account management options available to a user. As shown, the user is not provided with the option to configure 2FA:
>
> {{screenshot}}
