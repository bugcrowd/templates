Access controls can be bypassed through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, by manipulating the form, or by counterfeiting sessions. The access controls for this application can be bypassed by an attacker who can gain access to a privileged user’s account and functionality. As a result, the attacker has access to more resources or functionality within the application. This could include viewing or editing sensitive customer data, and viewing or editing other user permissions.

**Business Impact**

The impact of this vulnerability can vary in severity depending on the degree of access to resources or functionality the attacker is able to gain. An attacker with the ability to access, delete, or modify data from within the application could result in reputational damage for the business through the impact to customers’ trust. This can also result in indirect financial cost to the business through fines and regulatory bodies if sensitive data is accessed. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Login to User Account A
1. Using the HTTP interception proxy, forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Forward the requests until there is a POST request visible with the following parameters:

{{parameter}}

1. Modify the parameter to the following payload:

{{payload}}

1. Forward the request then turn off interception in the proxy
1. Observe that User Account A now has additional Administrator privileges and user functionality it was previously not authorized to access

**Proof of Concept (PoC)**

The screenshots below demonstrate the access controls being bypassed.

Unauthenticated view:

{{screenshot}}

Bypassing the access controls:

{{screenshot}}

Privileged user view:

{{screenshot}}

An attacker could escalate this further by abusing the privileged users permissions to perform specific actions. This is demonstrated in the screenshot below:

{{screenshot}}
