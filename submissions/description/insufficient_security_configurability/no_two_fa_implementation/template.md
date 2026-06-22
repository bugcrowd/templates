The application does not offer Two-Factor Authentication (2FA) as an option for user accounts. Without 2FA, account security relies only on the strength of the user's password, with no additional verification step to prevent unauthorized access. An attacker who obtains a user's password can access user's accounts, including those with access to sensitive data or administrative functions.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.


**Steps to Reproduce**

1. Use a browser to navigate and log in at: {{URL}}
1. Navigate to the account security settings at {{security_settings_url}}
1. Confirm that no 2FA or multi-factor authentication option is available

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
