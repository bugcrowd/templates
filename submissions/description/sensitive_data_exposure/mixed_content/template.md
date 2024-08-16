Mixed content is when a page is loaded over a HTTPS connection but the application pulls content using a mix of HTTP and HTTPS, leaving the page susceptible to sniffing and Person-in-The-Middle (PiTM) attacks. This application discloses sensitive data via mixed content, enabling an attacker to collect sensitive metadata to escalate privileges or launch phishing campaigns on targeted users.

#### Business Impact

This vulnerability can lead to data theft through the attacker’s ability to manipulate data through their access to the application through a PiTM connection. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

#### Steps to Reproduce

1. Login as a user and navigate to: {{URL}}
1. Use Developer Tools, Network tab to see that sensitive content is being served over HTTP:

{{screenshot}}

#### Proof of Concept (PoC)

The following screenshot shows the sensitive data served over HTTP:

{{screenshot}}
