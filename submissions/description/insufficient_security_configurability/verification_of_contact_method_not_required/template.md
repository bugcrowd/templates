# Verification of Contact Method Not Required

## Overview of the Vulnerability

The overall security of an application is diminished when accounts are not properly verified upon creation of a new contact method, such as an email address. The lack of a verification email for a contact method allows an attacker to associate their account with an unvalidated method of contact. This allows them to perform phishing, or impersonation attacks, and can lead to attacks such as account squatting.

## Business Impact

A lack of a verification email for an updated contact method can result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Use a browser to login to a valid account and navigate to: {{URL}}
1. Modify a contact method of the account, such as the phone number of email address
1. Observe that no verification email is sent to the new contact method before it is associated with the account

## Proof of Concept (PoC)

The lack of notification email can be seen below below::

{{screenshot}}
