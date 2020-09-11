## Description


## Reproduction Steps


## References


## Remediation Advice

Avoid putting tokens in the URLs. The token can be found in cleartext wherever the URL is stored (eg: within unencrypted log files or browser cache). Instead, tokens should be sent in the HTTPS headers. Ensure all sensitive data is only transmitted via `HTTPS`.
