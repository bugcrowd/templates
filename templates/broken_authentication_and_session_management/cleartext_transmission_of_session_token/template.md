# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/Testing_for_Sensitive_information_sent_via_unencrypted_channels_(OTG-CRYPST-003)
- https://www.owasp.org/index.php/SecureFlag


# Remediation Advice

Ensure that session tokens are transmitted over protected channels at all times. If the secure cookie flag is not an option ensure that the application does not support unencrypted communication.