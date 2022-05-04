# Basic Subdomain Takeover

## Overview of the Vulnerability

A subdomain takeover is when a misconfigured Domain Name System (DNS) record is re-registered to an endpoint owned by an attacker. An attacker is then able to redirect users to the endpoint and capture data such as cookies and credentials, perform Cross-Site Scripting (XSS) attacks, and potentially take over accounts in the legitimate application.

A basic subdomain takeover vulnerability was identified which could impact the reputation and brand of the business. An attacker can register a subdomain on behalf of the target domain and use it for spamming and phishing attacks.

## Business Impact

Basic subdomain takeover could lead to data theft and indirect financial loss through the attacker’s ability to interact with legitimate users. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

## Steps to Reproduce

1. Browse to the URL `takeover.inscope.com/proof.txt`
1. You will see a Bugcrowd Username which matches the HTML comment in the Proof of Concept

## Proof of Concept (PoC)

The following screenshot show the success of a subdomain takeover:

{{screenshot}}
