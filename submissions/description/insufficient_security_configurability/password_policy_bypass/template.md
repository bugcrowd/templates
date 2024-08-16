When there is no password policy set, or the password policy can be bypassed, the overall strength of the authentication process for an application is diminished. A password policy bypass is present within this web application, allowing for weak passwords to be used by any user. This makes it easy for an attacker to use password spraying or brute forcing methods to guess users passwords, with minimal effort required to compromise multiple users’ accounts.

#### Business Impact

Having a password policy bypass present within the application can result in reputational damage for the business through the impact to customers’ trust as they could believe that the business doesn’t take their account security seriously or trust that their data within will remain secure.

#### Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Attempt to login
1. Observe that modifying the following parameter allows a user to bypass the password policy of the application:

​​{{parameter}}

#### Proof of Concept (PoC)

The following screenshot shows the bypass of the password policy:

{{screenshot}}
