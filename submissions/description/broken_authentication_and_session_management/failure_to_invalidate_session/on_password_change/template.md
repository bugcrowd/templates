# Failure to Invalidate the Session on Password Change

Applications that fail to invalidate sessions when the password is changed are more susceptible to account takeover by an attacker who has already gained a foothold in a legitimate user’s account. An attacker may compromise a user’s session through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, phishing a user, by manipulating a form, or by counterfeiting sessions.

Once they have gained account access, an attacker may be able to change the password of the account and lock out the legitimate user. An attacker also may be able to invalidate legitimate sessions from within the application. The attacker is only limited in their actions by the permissions granted to the legitimate user. This could include viewing or editing sensitive customer data, viewing or editing other user permissions, and taking over other user accounts or escalating their privileges.

Vulnerability Specifics to the Application:

Failure to invalidate a session on password change in {{application}} allows a malicious attacker to {{action}}.

## Business Impact

Failure to invalidate a session after a password change can allow an attacker, who has gained access to an account due to a compromised password, full account access even after the password has been changed.

This vulnerability can result in modification or theft of data, including Personally Identifiable Information (PII). This can lead to financial loss, and reputational damage of {{customer-name}} and their users.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Using {{browser-used}}, log in to {{application}} at {{URL}}
1. In the HTTP interception proxy, capture any authenticated GET or POST request
1. Navigate to {{URL}} and modify the password of the account used to login in step 2
1. Resend the captured request from step 3 and observe that the session token was not invalidated on password change. This can been observed within the HTTP response header or within the HTTP response body
1. To further validate, open a new browser window using {{browser-used}} and navigate to {{URL}} and observe that the session is still valid

## Proof of Concept (PoC)

The screenshots below demonstrate how the application fails to invalidate the session after a password change:

Captured request of logged in session ID from {{URL}}:

{{screenshot}}

Password Change:

{{screenshot}}

HTTP response showing that the session is still valid:

{{screenshot}}
