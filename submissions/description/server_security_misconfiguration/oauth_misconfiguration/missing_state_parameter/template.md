OAuth is an authorization framework used to identify and authenticate users for an application. There are a number of implementation misconfigurations which can lead to an OAuth framework being implemented insecurely that an attacker can leverage to take over multiple user accounts and manipulate or retrieve data.

A misconfigured or missing `state` parameter allows an attacker to issue a request on behalf of a user and trick the user’s browser into completing the OAuth workflow, similar to a Cross-Site Request Forgery (CSRF) attack. This can enable an attacker to take over multiple accounts in the application depending on the OAuth workflow configuration.

#### Business Impact

Account takeover can lead to financial and loss through an attacker's access to multiple user accounts and the data within. This attack can also lead to reputational damage for the business through the impact to customers’ trust in the security of the application.

#### Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to login and navigate to: {{URL}}
1. Capture the response with the HTTP intercept proxy turned on
1. Observe the insecure `state` parameter
1. Change `state` to the following value:

{{parameter}}

1. Forward the following vulnerable request to the application:

``` HTTP Request
{{HTTP Request}}
```

1. Observe that it is now possible to take over a user’s account

#### Proof of Concept (PoC)

The screenshot below demonstrates a successful account takeover:

{{screenshot}}
