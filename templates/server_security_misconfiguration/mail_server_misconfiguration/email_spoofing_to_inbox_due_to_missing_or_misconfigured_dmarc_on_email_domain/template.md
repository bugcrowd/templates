## Description


## Reproduction Steps


## References

- https://mxtoolbox.com/DMARCRecordGenerator.aspx
- https://dmarc.org/2016/03/best-practices-for-email-senders/
- https://www.ftc.gov/system/files/documents/reports/businesses-can-help-stop-phishing-protect-their-brands-using-email-authentication-ftc-staff/email_authentication_staff_perspective.pdf


## Remediation Advice

SPF is not a sufficient email spoofing protection in case of some of the largest email providers. Emails spoofed for domains having properly configured hard fail SPF records may still be delivered to the recipient's inbox. In order to fully prevent email spoofing create a DMARC record with “p=reject” policy. Please note that if your DMARC policy is not set up properly it may result in email delivery issues.

