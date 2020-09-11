## Description


## Reproduction Steps


## References


## Remediation Advice

Do not expose a sensitive token through insecure requests, as to not send the token in the `Referer` header, over cleartext HTTP or when going off-site to a 3rd party.

