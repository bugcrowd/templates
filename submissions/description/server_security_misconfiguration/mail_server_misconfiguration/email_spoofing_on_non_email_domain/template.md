# Email Spoofing on Non-Email Domain

## Overview of the Vulnerability:

Email spoofing is an attack that modifies email headers to send emails on behalf of a domain. It is commonly used in phishing and spam campaigns to appear as if the emails originate from a legitimate source. A misconfiguration of this non-email domain enables an attacker to spoof the name of a domain and send spoofed emails on its behalf.

## Business Impact:

Depending on the type of misconfiguration found in the mail server, an attacker who is able to  manipulate and use the domain as part of a phishing or spam campaign can cause reputational damage to the business.

## Steps to Reproduce:

1. Use dig or nslookup to request details for DMARC:

```bash
dig TXT 
```

1. Observe in the response that there is no answer section for DMARC on the domain:

```text
```

## Proof of Concept (PoC):

The screenshot(s) below demonstrates the mail server misconfiguration:

{{screenshot}}
