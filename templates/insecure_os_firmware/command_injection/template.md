# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/Top_10-2017_A1-Injection
- https://www.owasp.org/index.php/Command_Injection
- http://projects.webappsec.org/OS-Commanding
- https://www.owasp.org/index.php/Injection_Prevention_Cheat_Sheet
- https://www.cvedetails.com/vulnerability-list/opec-1/execute-code.html


# Remediation Advice

1. Avoid using shell execution functions. If unavoidable, limit their use to very specific use cases.
2. Perform proper input validation when taking user input into a shell execution command.
3. Use a safe API when accepting user input into the application.
4. Escape special characters in the case where a safe API is not available.