# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/Top_10_2010-A9-Insufficient_Transport_Layer_Protection


# Remediation Advice

1. Require `TLS` for all sensitive pages. Non-`TLS` requests to these pages should be redirected to the `TLS` page.
2. Set the `Secure` flag on all sensitive cookies.
3. Configure your `TLS` provider to only support strong (e.g., `FIPS 140-2` compliant) algorithms.
4. Ensure your certificate is valid, not expired, not revoked, and matches all domains used by the site.
5. Backend and other connections should also use `TLS` or other encryption technologies.