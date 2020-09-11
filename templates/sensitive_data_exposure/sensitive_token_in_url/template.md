## Description


## Reproduction Steps


## References


## Remediation Advice

Avoid putting any sensitive token in the URLs. The token can be found in cleartext wherever the URL is stored (eg: within unencrypted log files or browser cache). Instead, sensitive tokens should be sent in the HTTPS headers. Ensure all sensitive data is only transmitted via `HTTPS`.
