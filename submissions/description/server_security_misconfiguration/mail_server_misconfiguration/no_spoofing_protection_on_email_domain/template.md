# No Spoofing Protection on Email Domain

## Overview of the Vulnerability

A Sender Policy Framework (SPF) and DomainKeys Identified Mail (DKIM) are security controls used by email domains to prevent spoofing. A missing or misconfigured SPF or DKIM on this domain enables an attacker to spoof the name of a domain and send emails on its behalf.

## Business Impact

Depending on the type of misconfiguration found in the mail server, an attacker who is able to  manipulate and use the domain as part of a phishing or spam campaign can cause reputational damage to the business.

## Steps to Reproduce

1. Use dig or nslookup to request details for SPF/DKIM/DMARC on the domain:

```bash
dig TXT 
```

1. Observe in the response that the SPF/DKIM/DMARC is missing or misconfigured:

{{response}}

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the mail server misconfiguration:

{{screenshot}}
