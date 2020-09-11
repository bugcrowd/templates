## Description


## Reproduction Steps


## References

- http://www.openspf.org/SPF_Record_Syntax
- http://www.openspf.org/FAQ/Common_mistakes#include


## Remediation Advice

1. Consider adding email spoofing protections for all your domains as attackers may resort to spoofing those, regardless of whether emails originate from them or not. Victims can still be fooled by seeing your domain.
2. Consider using -all instead of ~all in the SPF record. Please be aware that using -all may result in email delivery issues.
3. Since there is a limit of 10 DNS lookups per SPF record, specifying an IP address or address range is preferable for long lists of outgoing mail servers.

