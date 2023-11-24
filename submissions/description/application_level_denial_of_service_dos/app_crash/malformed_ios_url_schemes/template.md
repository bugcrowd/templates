# Application-Level Denial of Service Causes Application to Crash via Malformed iOS URL Schemes

## Overview of the Vulnerability

Application-level Denial of Service (DoS) attacks are designed to deny service to users of an application by flooding it with many HTTP requests. This makes it impossible for the server to respond to legitimate requests in any practical time frame.

There is a local application-level DoS vulnerability within this iOS application that causes it to crash. An attacker can use this vulnerability to provide empty, malformed, or irregular data via a URL scheme, crashing the application and making it unavailable for its designed purpose to legitimate users.

## Business Impact

Application-level DoS can result in indirect financial loss for the business through the attacker’s ability to DoS the application. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Navigate to {{url}}
1. Use the following payload:

{{payload}}

1. In the URL, insert the payload into the following parameter:

{{parameter}}

1. Observe that the payload causes a Denial of Service

## Proof of Concept (PoC)

The screenshot below demonstrates the Denial of Service:

{{screenshot}}
