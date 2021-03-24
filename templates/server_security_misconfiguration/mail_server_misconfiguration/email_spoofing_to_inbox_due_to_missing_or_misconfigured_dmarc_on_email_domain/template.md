# Email Spoofing on inbox due to missing or misconfigured DMARC

<!--
Provide a 1-2 sentence description - see http://cveproject.github.io/docs/content/key-details-phrasing.pdf for tips

This format is a good guide:
[VULNTYPE] in [COMPONENT] in [APPLICATION] allows [ATTACKER] to [IMPACT] via [VECTOR]
-->

Email Spoofing on inbox due to missing or misconfigured DMARC on email domain of {{application}} allows a malicious attacker to {{action}}

## Walkthrough & PoC

<!-- Provide a step-by-step walkthrough on how to access the vulnerable injection point, and how to exploit the vulnerability.
Adding a dot-pointed walkthrough with relevant screenshots will speed triage time and result in faster rewards!
-->

1. Using the dig command, you can request the details on DMARC on the domain belonging to {{application}}

```bash
dig {{url}} TXT
```

1. You can observe in the response, there is no answer section for DMARC on the domain

```text
 <<>> DiG 9.10.6 <<>> TXT _DMARC.
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 22363
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;_DMARC.		IN	TXT

;; Query time: 99 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Wed Nov 04 10:47:32 AWST 2020
;; MSG SIZE  rcvd: 122
```

1. Alternatively, you can observe in the response, the field for `Q=` is set to None

```text
; <<>> DiG 9.10.6 <<>> TXT _DMARC.
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 44738
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0

;; QUESTION SECTION:
;_DMARC.		IN	TXT

;; ANSWER SECTION:
_DMARC.	300	IN	TXT	"v=DMARC1; p=none; rua=mailto:admin@"

;; Query time: 98 msec
;; SERVER: 127.0.0.1#53(127.0.0.1)
;; WHEN: Wed Nov 04 11:03:44 AWST 2020
;; MSG SIZE  rcvd: 122
```

## Vulnerability Evidence
<!--
Your submission MUST include evidence of the vulnerability and not be theoretical in nature.

For an email spoofing issue due to missing or misconfigured DMARC on email domain, this requires a spoofed email being sent from the non-email domain, you can attach the entire email content, including headers to the submission.
-->

Please view the evidence showing a spoofed email sent below. {{screenshot}}

## Demonstrated Impact

<!--
Attempt to escalate the email spoofing issue into something significant, such as being able to send spoofed emails while bypassing the spam filter. If this is possible, provide a full proof-of-concept here.
-->

A email domain that does not implement DMARC dns records correctly could enable an attacker to send spoofed emails that appear to the recipient as from the spoofed sender. This is usually mitigated however by the presence of DKIM or SPF, and other anti-spam measures.
