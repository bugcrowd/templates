# Overview
<!--
**Please replace text in each section below**

Email Spoofing on Non-Email Domain Report

Resources:

- <https://mxtoolbox.com/DMARCRecordGenerator.aspx>
- <https://dmarc.org/2016/03/best-practices-for-email-senders/>
- <https://www.ftc.gov/system/files/documents/reports/businesses-can-help-stop-phishing-protect-their-brands-using-email-authentication-ftc-staff/email_authentication_staff_perspective.pdf>
-->

## Walkthrough & PoC
<!--
Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!

Example:

1. Using the dig command, you can request the details on DMARC on the domain `www.noemail.local`

```bash
dig TXT 
```

1. You can observe in the response, there is no answer section for DMARC on the domain

```text
 <<>> DiG 9.10.6 <<>> TXT _DMARC.noemail.local
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 22363
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;_DMARC.noemail.local.		IN	TXT

;; Query time: 99 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Wed Nov 04 10:47:32 AWST 2020
;; MSG SIZE  rcvd: 122
```

-->

## Vulnerability Evidence
<!--
This requires a spoofed email being sent from the non-email domain, you can attach the entire email content, including headers to the submission. 
-->

## Demonstrated Impact
<!--
Please demonstrate what the impact of having email spoofing on a domain not utilises for email would have on the target
--> 
