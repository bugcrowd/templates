## Description


## Reproduction Steps


## References


## Remediation Advice

In order to prevent this type of injection consider the following solutions:

1. Keep track of company's public 3rd party accounts, that includes social media. Whenever one is deleted, make sure it is not referenced in the application
2. Monitor all hyperlinks pointing to 3rd party resources, as well as any other external references for that matter, and make sure that they do not become invalid, e.g. check for change in HTTP response code. In many cases it may be possible for anyone to claim such URL's and share new content.
3. Always treat all user input as untrusted data.
