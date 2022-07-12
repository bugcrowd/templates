# Email Spoofing to Inbox due to Missing or Misconfigured DMARC on Email Domain

## Overview of the Vulnerability

A Sender Policy Framework (SPF) and DomainKeys Identified Mail (DKIM) are security controls used by email domains to prevent spoofing. Domain-based Message Authentication (DMARC) uses both SPF and DKIM to reject or quarantine emails sent from domains. A missing DMARC on this domain enables an attacker to spoof the name of a domain and send emails on behalf of the domain.

## Business Impact

Depending on the type of misconfiguration found in the mail server, an attacker who is able to  manipulate and use the domain as part of a phishing or spam campaign can cause reputational damage to the business.

## Steps to Reproduce

1. Use dig or nslookup to request details for DMARC:

```bash
dig TXT 
```

1. Observe in the response that there is a misconfigured or missing answer section for DMARC on the domain:

```text
```

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the mail server misconfiguration:

{{screenshot}}
