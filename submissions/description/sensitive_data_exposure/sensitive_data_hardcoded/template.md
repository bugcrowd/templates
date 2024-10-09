Sensitive data can be exposed when it is not behind an authorization barrier. When this information is exposed it can place the application at further risk of compromise. This application has sensitive data that is hardcoded, such as API keys, credentials, or Personally Identifiable Information (PII). This hardcoded sensitive data can be used by an attacker to gain access to the application and escalate their privileges, which can lead to user account compromise and data exfiltration.

**Business Impact**

This vulnerability can lead to data exfiltration through the attacker’s ability to manipulate the application through their access to the hardcoded sensitive data. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Capture the request using the HTTP interception proxy
1. Observe the hardcoded sensitive data exposed in the request / source code:

{{screenshot}}

**Proof of Concept (PoC)**

The following screenshot shows the hardcoded sensitive data:

{{screenshot}}
