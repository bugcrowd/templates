## Description


## Reproduction Steps


## References

- https://blog.avira.com/understanding-rosetta-flash-vulnerability/
- https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-4671


## Remediation Advice

Since Flash files cannot start with comments, ensuring that `callback` parameters begin with a comment, such as: `/* */` is a sufficient protection.

