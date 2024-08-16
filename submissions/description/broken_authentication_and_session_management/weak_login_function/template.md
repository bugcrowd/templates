Weak login functionality arises from improperly configured authentication practices which weakens the security of the authentication process of an application. This can lead to an attacker gaining access to user data and functionality of the application by taking advantage of the broken authentication and session management mechanisms.

#### Business Impact

Weak login function can lead to indirect financial loss through an attacker accessing, deleting, or modifying data from within the application. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact is dependent on the sensitivity of the data being stored in, and transmitted by the application, as well as the privileges of the account the attacker gains access to.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Forward the following request to the endpoint:

```HTTP
{{request}}
```

1. Observe in the HTTP interception proxy a 200 OK in the HTTP response indicating valid access

#### Proof of Concept (PoC)

The following screenhots show the full exploit:

{{screenshot}}
