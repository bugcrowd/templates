# Description


# Reproduction Steps


# References


# Remediation Advice

1. Use the `X-Frame-Options: DENY` HTTP response header on pages with sensitive information, to disallow framing of the page on external resources.
2. In the case where `DENY` is not an option, use `X-Frame-Options: SAMEORIGIN`.
3. In the case where `SAMEORIGIN` is not an option, `X-Frame-Options: ALLOW-FROM https://example.com/`.