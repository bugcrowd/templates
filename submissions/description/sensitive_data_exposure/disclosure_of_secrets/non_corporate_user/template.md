Disclosure of secrets occurs when the data is not properly secured. When secrets are exposed it can place the application at further risk of compromise. This application discloses secrets for a non-corporate user which can be leveraged by an attacker to access the application and make requests on the legitimate user’s behalf.

## Business Impact

Disclosure of secrets can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application via the access gained using the non-corporate user account. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Navigate to the following URL: {{URL}}
1. Observe the following secret for a non-corporate user was revealed:

{{value}}

## Proof of Concept (PoC)

The screenshots below displays the secrets disclosed:

{{screenshot}}
