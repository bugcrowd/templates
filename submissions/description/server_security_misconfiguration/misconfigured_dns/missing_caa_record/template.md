Certificate Authority Authorization (CAA) allows an owner or DNS resource holder to specify the types of Certificate Authorities (CA) allowed to issue certificates for the domain. The application is missing a CAA record which can allow an attacker to issue certificates on behalf of the DNS resource owner for their domains.

#### Business Impact

This vulnerability can result in reputational damage and indirect financial loss to the business through the impact to customers’ trust.

#### Steps to Reproduce

1. Use {{software}} to gathering information about the DNS
1. Observe the missing CAA record in the output:

{{value}}

#### Proof of Concept (PoC)

The following screenshot show the DNS resource record and CAA rule:

{{screenshot}}
