The ability to bruteforce usernames in a web service can allow an attacker to gain an insight into the user base of a service, helping them identify accounts and test for password reuse, endangering the users accounts for the service. A malicious attacker can leverage user enumeration to generate a potential list of usernames for use in phishing or brute force campaigns.

**Business Impact**

Username enumeration can result in reputational damage for the business through the impact to customers’ trust in the application’s security of user accounts. If an attacker is able to chain this vulnerability with another it can lead to user account compromise and data exfiltration.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Fill in the form and send the request
1. Intercept request in the HTTP interception proxy
1. Using {{command}} send multiple requests by {{action}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrates the response from the server:

{{screenshot}}
