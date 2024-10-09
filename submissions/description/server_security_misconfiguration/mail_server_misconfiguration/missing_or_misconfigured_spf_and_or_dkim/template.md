A Sender Policy Framework (SPF) and DomainKeys Identified Mail (DKIM) are security controls used by email domains to prevent spoofing. A missing or misconfigured SPF or DKIM on this domain enables an attacker to spoof the name of a domain and send emails on its behalf.

**Business Impact**

Depending on the type of misconfiguration found in the mail server, an attacker who is able to  manipulate and use the domain as part of a phishing or spam campaign can cause reputational damage to the business.

**Steps to Reproduce**

1. Using the dig command, you can request the details on SPF/DKIM on the domain

```bash
dig TXT 
```

1. Observe in the response that there is no answer section for SPF/DKIM on the domain:

```text
```

1. Using the following command to request details on the SPF and DKIM on the domain:

{{value}}

1. Observe in the response that the SPF/DKIM is missing or misconfigured:

{{response}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrates the mail server misconfiguration:

{{screenshot}}
