# Token Leakage via Referer Header over HTTP

## Overview of the Vulnerability

The `Referer` HTTP request header is used to show the URL of the page a user requested the resource from. This application’s `Referer` headers leak valid user tokens that are transmitted over an unencrypted HTTP connection. This connection can be intercepted by a local attacker performing a Person-in-The-Middle (PiTM) attack, or by an attacker exploiting third-party vendors. With access to the exposed token in the `Referer` HTTP header, the attacker could escalate privileges and execute API calls on behalf of a user in the application.

## Business Impact

Token Leakage via `Referer` header can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application, providing that they can escalate privileges and execute API calls. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact is dependent on the sensitivity of the data being stored in, and transmitted by the application, as well as the privileges of the account the attacker gains access to.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Capture the request using the HTTP interception proxy
1. Observe the token in `Referer` header and that the connection is over HTTP

## Proof of Concept (PoC)

The following screenshot shows the token exposed within the `Referer` HTTP request header over a HTTP connection:

{{screenshot}}
