# Bitsquatting

## Overview of the Vulnerability:

Bitsquatting is the act of registering domains with one bit flipped from the original domain name. This allows an attacker to hijack traffic from known domains via DNS queries from accidental key presses, as well as misconfigurations on hardware processing the queries. Bitflipping domains can allow an attacker to serve malicious content and collect data on behalf of the targeted application in the form of HTTP requests, binary data, and other sensitive data.

## Business Impact:

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce:

1. Register domain with one bitflipped e.g. Bugcrowd.com -> eugcrowd.com
1. {{action}} to collect data on the bitflipped domain
1. Notice that the following queries are captured by the bitflipped domain:

{{screenshot}}

## Proof of Concept (PoC):

The screenshot below demonstrates the bitsquatting:

{{screenshot}}
