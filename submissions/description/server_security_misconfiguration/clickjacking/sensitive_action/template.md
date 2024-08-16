Clickjacking is a method of tricking a user into clicking on a link that performs an action, which is disguised as a legitimate link to something else. Usually, this is carried out by embedding a link into a transparent `<iframe>` HTML element which sits on top of a legitimate button on the webpage. This instance of clickjacking can allow an attacker to manipulate a user into performing unwanted actions when they believe they are performing a sensitive click-based action within the application.

#### Business Impact

Clickjacking can lead to reputational damage for the business due to a loss in confidence from users who are attempting to perform legitimate actions within the application.

#### Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. With the HTTP intercept proxy turned on, use a browser to navigate to: {{URL}}
1. Observe that {{action}} can be performed through only mouse-clicks
1. In a HTTP proxy, observe in the server response that there are no anti-clickjacking protections in place, such as the header `Content-Security-Policy: frame-ancestors 'self'` or the `X-Frame-Options` header  set to `DENY` or `SAMEORIGIN`

#### Proof of Concept (PoC)

The screenshot below demonstrates the full exploit taking place:

{{screenshot}}
