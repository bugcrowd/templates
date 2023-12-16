# Missing DNSSEC

## Overview of the Vulnerability:

Domain name system security extensions (DNSSEC) are security controls used for DNS lookups to protect users from Cache Poisoning and Person-in-The-Middle (PiTM) attacks. It does this by using a cryptographic signature to ensure DNS servers are non-malicious.

Missing DNSSEC keys in {{target}} allow a malicious attacker to execute PiTM and Cache Poisoning attacks.

## Business Impact:

This vulnerability can result in reputational damage and indirect financial loss to the business through the impact to customers’ trust.

## Steps to Reproduce:

1. Use {{software}} to gathering information about the DNS
1. Observe that DNSSEC is missing

## Proof of Concept (PoC):

The following screenshot show the full exploit:

{{screenshot}}
