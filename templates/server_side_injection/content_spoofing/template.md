## Description


## Reproduction Steps


## References

- http://projects.webappsec.org/w/page/13246917/Content%20Spoofing


## Remediation Advice

1. Always treat all user input as untrusted data.
2. Always input or output encode all data coming into or out of the application.
3. Always whitelist allowed characters and seldom use blacklisting of characters unless in certain use cases.
4. Always use a well known and security encoding API for input and output encoding such as the `OWASP ESAPI`.
5. Never try to write input and output encoders unless absolutely necessary. Chances are that someone has already written a good one.
