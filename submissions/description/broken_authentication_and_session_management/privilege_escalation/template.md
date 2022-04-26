# Privilege Escalation via Broken Authentication

## Overview of the Vulnerability

Authentication and session management controls can be bypassed through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, by manipulating the form, or by counterfeiting sessions. The authentication method for this application can be bypassed by an attacker which enables them to access a privileged user’s account and functionality, giving them access to more resources or functionality within the application. This could include viewing or editing sensitive customer data, and viewing or editing other user permissions.

## Business Impact

The impact of privilege escalation through broken authentication controls can vary in severity depending on the degree of access to resources or functionality the malicious attacker is able to gain. An attacker with the ability to access, delete, or modify data from within the application could result in reputational damage for the business through the impact to customers’ trust. This can also result in indirect financial cost to the business through fines and regulatory bodies if sensitive data is accessed. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Login to User Account A
1. Using the HTTP interception proxy, forward the following request to the endpoint:

```HTTP Request
{{request}}
```

1. Forward the requests until there is a POST request visible with the following parameters:

{{parameter}}

1. Modify the parameter to the following payload:

{{payload}}

1. Forward the request then turn off interception in the prox
1. Observe that User Account A now has additional Administrator privileges and user functionality it was previously not authorized to access

## Proof of Concept (PoC)

The screenshots below demonstrate the authentication method being bypassed.

Unauthenticated view:

{{screenshot}}

Bypassing authentication and escalating privileges:

{{screenshot}}

Privileged user view:

{{screenshot}}

A malicious attacker could abuse this authentication bypass further by abusing the privileged users permissions. This is demonstrated in the screenshot below:

{{screenshot}}
