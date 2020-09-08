# Description


# Reproduction Steps


# References

- https://dmarc.org/wiki/FAQ#My_mail_is_going_to_the_spam_folder_now.2C_is_DMARC_the_problem.3F
- https://mxtoolbox.com/DMARCRecordGenerator.aspx
- http://www.openspf.org/SPF_Record_Syntax


# Remediation Advice

In order to fully prevent email spoofing create a DMARC record with “p=reject” policy. Please note that if your DMARC policy is not set up properly it will result in email delivery issues.