# Description


# Reproduction Steps


# References

- http://www.azarask.in/blog/post/a-new-type-of-phishing-attack/


# Remediation Advice

There are a handful of solutions, however they might not be supported by all browsers:

1. Remove or disallow target="_blank" for any anchors pointing to a different origin.
2. Append rel="noreferrer" to any links with target="_blank", but keep in mind that it prevents sending `Referer` in the request headers.
3. Append rel="noopener" to any links with target="_blank".
4. Install a tabnabbing prevention script.