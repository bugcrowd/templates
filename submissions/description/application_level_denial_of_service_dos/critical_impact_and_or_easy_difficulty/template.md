Application-level Denial of Service (DoS) attacks are designed to deny service to users of an application by flooding it with many HTTP requests. This makes it impossible for the server to respond to legitimate requests in any practical time frame.

There is an application-level DoS vulnerability within this application that has critical impact or is easily performed. An attacker can use this vulnerability to exhaust resources, making the application unavailable for its designed purpose to legitimate users.

## Business Impact

Application-level DoS can result in indirect financial loss for the business through the attacker’s ability to DoS the application. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Navigate to the following URL: {{url}}
1. Use the following payload:

{{payload}}

1. In the URL, insert the payload into the following parameter:

{{parameter}}

1. Observe that the payload causes a denial of service that has critical impact or is easy to perform

## Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) proof of the vulnerability:

{{screenshot}}
