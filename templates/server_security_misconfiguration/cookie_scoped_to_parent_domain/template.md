## Description


## Reproduction Steps


## References

- https://tools.ietf.org/html/rfc6265


## Remediation Advice

If possible do not set the domain for the session cookie. If domain is not set, so by default, the cookie will be a host only cookie, meaning accessible explicitly to the domain from which it was set.
