# Disclosure of Secrets Pay-Per-Use Abuse

## Overview of the Vulnerability

Disclosure of secrets occurs when the data is not properly secured, allowing sensitive data, such as secrets, API keys, or other data critical to business operation to be exposed. This application discloses sensitive data that could be used by an attacker to make repeated API requests on a user’s behalf without their knowledge. Additionally, if an attacker is able to chain this vulnerability with another, they could use their access to the API to escalate privileges on the application and its hosted environment.

## Business Impact

Disclosure of secrets can lead to direct financial loss through an attacker making repeated requests to the API which are generally pay-per-use.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Observe that the following secret for the API is exposed:

{{screenshot}}

1 Send the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe the HTTP 200 OK success status response code

## Proof of Concept (PoC)

The screenshot below displays the secrets disclosed:

{{screenshot}}
