## Description


## Reproduction Steps


## References

- http://www.binaryplanting.com/guidelinesDevelopers.htm


## Remediation Advice

1. Use fully qualified paths when loading binaries.
2. Remove the current working directory (CWD) from the binary search path or if the application depends on loading a binary from the current directory, the path should be obtained first and used to pass in a fully qualified path.
3. Secure access permissions on a local directory as to not allow a local attacker to plant a malicious binary in a trusted location.

