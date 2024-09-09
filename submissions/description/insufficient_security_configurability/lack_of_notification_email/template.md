The overall security of an application is diminished when accounts are not properly configured to include a notification email upon important account changes, such as a password or email address change. A lack of notification email on account changes allows an attacker who has gained access to a user's account through other means to make changes without notifying the user.

## Business Impact

A lack of a notification email upon important account changes as a single vulnerability does not have a strong impact. However, chained with other vulnerabilities, it could lead to data theft through the attacker’s ability to manipulate data via their access to the application, and their ability to interact with other users. This includes them performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Use a browser to login to a valid account and navigate to: {{URL}}
1. Modify an account variable, such as the password or username
1. Observe that no notification email is sent to the associated account email address to notify the owner of the change

## Proof of Concept (PoC)

The lack of notification email can be seen below below::

{{screenshot}}
