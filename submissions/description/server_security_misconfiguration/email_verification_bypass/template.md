Email verification bypass is where an attacker is able to gain access to the application or system without confirming the email address used to create the account. As a result,  an attacker is able to sign up to the application using email addresses that they don't own. This can lead to multiple fake accounts being created, or accounts being created on behalf of other users. While not a vulnerability within itself, bypassing email verification can lead to social engineering attacks on legitimate users.

#### Business Impact

The impact of this vulnerability can lead to an attacker creating multiple fake accounts, performing fraudulent activities, or exploiting other vulnerabilities on behalf of other users. This could result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

#### Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Register User Account A
1. Using the HTTP interception proxy, intercept the following request:

```HTTP
{{request}}
```

1. Modify the following parameters:

{{payload}}

1. Forward the request then turn off interception in the proxy
1. Observe that User Account A is activated without email verification.

#### Proof of Concept (PoC)

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
