# Account Takeover by Insecure Redirect URI

## Overview of the Vulnerability:

OAuth is an authorization framework used to identify and authenticate users for an application. There are a number of implementation misconfigurations which can lead to an OAuth framework being implemented insecurely that an attacker can leverage to take over multiple user accounts and manipulate or retrieve data.

The application fails to validate the `redirect_uri` parameter used within the OAuth workflow. This redirect URI is where the user is redirected to after being authorized. When the `redirect_uri` parameter is not validated, an attacker is able to change this URI to a domain they own. As a consequence, when the OAuth workflow is triggered, the legitimate user’s browser sends the authorization token to the attacker-controlled domain, allowing the attacker to take over the user’s account.

## Business Impact:

Account takeover can lead to financial and loss through an attacker's access to multiple user accounts and the data within. This attack can also lead to reputational damage for the business through the impact to customers’ trust in the security of the application.

## Steps to Reproduce:

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. With the HTTP intercept proxy turned on, login to the application and capture the response in the the HTTP intercept proxy
1. Change `redirect_uri` to the following value:

{{parameter}}

1. Observe that the authorization token is sent to server altered in the previous step

## Proof of Concept (PoC):

The screenshot below demonstrates a successful account takeover:

{{screenshot}}
