# Description


# Reproduction Steps


# References


# Remediation Advice

1. Do not store secrets in source code that is publicly accessible such as in a public GitHub repository.
2. Critically sensitive data should not be transmitted in cleartext. Make sure to only use `HTTPS` whenever transmitting passwords and private API keys.
3. Set appropriate headers to prevent caching of sensitive data when served to end-user.