## Description


## Reproduction Steps


## References

- http://resources.infosecinstitute.com/file-inclusion-attacks/
- https://en.wikipedia.org/wiki/File_inclusion_vulnerability
- https://www.cvedetails.com/vulnerability-list/opfileinc-1/file-inclusion.html


## Remediation Advice

1. Don't allow user input in file paths. If hard-coding is not an option, select input from a limited list via an index variable.
2. If dynamic path concatenation is a must have. Only accept required characters. Allow `a-z 0-9` and do not allow `..` or `/` or `%00` (null byte) or any unexpected characters.
3. For API's allow only inclusion for a specific directory and those below it, this stops traversal attacks.
