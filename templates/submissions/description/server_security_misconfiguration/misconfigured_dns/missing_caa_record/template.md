# Missing Certificate Authority Authorization Record

## Overview
<!--
**Please replace text in each section below**

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR] 
**Please replace text in each section below**

Basic Subdomain Takeover Report

Resources:
- <https://labs.detectify.com/2014/10/21/hostile-subdomain-takeover-using-herokugithubdesk-more/>


-->

Certificate Authority Authorization (CAA) allows an owner or DNS resource holder to specify the types of Certificate Authorities (CA) allowed to issue certicficates for the domain. 

A missing CAA can allow an attacker to issue a certificate for the {{target}} domains

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Browse to the URL `takeover.inscope.com/proof.txt` or run the command

```bash
curl takeover.inscope.com/proof.txt
```

1. You will see my Bugcrowd Username returned by Curl

```text
Subdomain Takeover of takeover.inscope.com by l33tHax0r1337
```

-->

1. Use {{software}} to gathering information about the DNS

1. Notice the value in the output:

{{value}}

## Vulnerability Evidence
<!--
Subdomain takeovers require some form of evidence that can be viewed by the team who triage this vulnerability, once you have taken over the subdomain, hosting a file containing your Bugcrowd username or the Submission ID will be sufficient.
-->

The following image(s) shows the DNS resource record and CAA rule:

{{screenshot}}

## Demonstrated Impact
<!--
Describe the impact of the takeover from this subdomain to the company, what effect could this have towards their operations, their public image, how frequently is this domain used, is this meant to be public facing? 
--> 

A malicious attacker can issue certificates on behalf of the DNS resource owner for it's domains.
