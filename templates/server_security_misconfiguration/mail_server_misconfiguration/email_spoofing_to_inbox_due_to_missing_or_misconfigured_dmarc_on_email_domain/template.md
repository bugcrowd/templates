# Email Spoofing Due to Missing or Misconfigured DMARC 

## Overview
<!--
**Please replace text in each section below**

Email Spoofing on inbox due to missing or misconfigured DMARC on email domain Report

Resources:

- <https://mxtoolbox.com/DMARCRecordGenerator.aspx>
- <https://dmarc.org/2016/03/best-practices-for-email-senders/>
- <https://www.ftc.gov/system/files/documents/reports/businesses-can-help-stop-phishing-protect-their-brands-using-email-authentication-ftc-staff/email_authentication_staff_perspective.pdf>
-->

A Sender Policy Framework (SPF) and DomainKeys Identified Mail (DKIM) are security controls used by email domains to prevent spoofing. Domain-based Message Authentication (DMARC) uses both SPF and DKIM to reject or quarantine emails sent from domains. A missing DMARC on a domain enables an attacker to spoof the name of a domain and send emails on it's behalf.


## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Using the dig command, you can request the details on DMARC on the domain `www.inscope.com`

```bash
dig TXT 
```

1. You can observe in the response, there is no answer section for DMARC on the domain

```text

 <<>> DiG 9.10.6 <<>> TXT _DMARC.inscope.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 22363
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;_DMARC.inscope.com.		IN	TXT

;; Query time: 99 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Wed Nov 04 10:47:32 AWST 2020
;; MSG SIZE  rcvd: 122
```

OR

1. You can observe in the response, the field for `Q=` is set to None

```text
; <<>> DiG 9.10.6 <<>> TXT _DMARC.inscope.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 44738
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;_DMARC.inscope.com.		IN	TXT

;; ANSWER SECTION:
_DMARC.inscope.com.	300	IN	TXT	"v=DMARC1; p=none; rua=mailto:admin@inscope.com"

;; Query time: 98 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Wed Nov 04 11:03:44 AWST 2020
;; MSG SIZE  rcvd: 122
```

-->

1. Using the dig command, you can request the details on DMARC on the domain {{target}}: 
   
{{command}}

1. You can observe in the response, there is no answer section for DMARC on the domain

{{screeenshot}}

1. You can observe in the response, the field for {{value}} is set to None

{{screenshot}}


## Vulnerability Evidence
<!--
This requires a spoofed email being sent from the non-email domain, you can attach the entire email content, including headers to the submission. 
-->

The followimg image(s) are screenshot of the missing DMARC or missing answer:

{{screenshot}}


## Demonstrated Impact
<!--
Email Spoofing on this domain allows an attacker to use existing email addresses for social engineering using the confidence of the organisations domain name, this will also put the organisations domain address on spam lists, which can put legimate company emails in the spam folder.
--> 

Email Spoofing on this domain allows an attacker to use existing email addresses for social engineering using the confidence of the organisations domain name, this will also put the organisations domain address on spam lists, which can put legimate company emails in the spam folder.