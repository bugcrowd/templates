Browsers implement features such as autocorrect to offer predictive spelling and grammar features for end users. The applications implementation of autocorrect for sensitive fields can enable an attacker with local access to login as a user, or leverage critical pieces of information to impersonate the user or make requests on their behalf.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Fill and {{action}} to submit form
1. {{action}} and notice previously entered text is autocorrected

{{screenshot}}

## Proof of Concept (PoC)

The screenshots below demonstrate the autocorrect enabled on a sensitive field:

{{screenshot}}
