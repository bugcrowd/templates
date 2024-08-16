A DNS Zone Transfer exports the contents of the zone file from one DNS to another. A Zone Transfer in {{target}} allows an attacker to uncover hidden attack surfaces such as IP addresses, subdomains, and DNS records.

#### Business Impact

This vulnerability can result in reputational damage and indirect financial loss to the business through the impact to customers’ trust.

#### Steps to Reproduce

1. Use {{software}} to gathering information about the DNS
1. Identify the name server: {{value}}
1. Request a zone transfer for the name server by sending the following command:

{{value}}

#### Proof of Concept (PoC)

The following screenshot show the full exploit:

{{screenshot}}
