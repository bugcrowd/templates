# Description


# Reproduction Steps


# References

- https://portswigger.net/kb/issues/00101080_server-side-template-injection


# Remediation Advice

1. Wherever possible, avoid creating templates from user input. Passing user input into templates as parameters is normally a safe alternative.
2.If supporting user-submitted templates is a business requirement, consider using a simple logic-less template engine such as Mustache or one provided by the native language like Python's Template. If this is not an option, review the chosen template engine's documentation for hardening advice, and consider rendering the template within a sandboxed execution environment.