# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/Command_Injection
- https://www.cvedetails.com/vulnerability-list/opec-1/execute-code.html


# Remediation Advice

The most effective method of eliminating Code Injection vulnerabilities is to avoid code evaluation at all costs unless absolutely and explicitly necessary (i.e. there is no possibility of achieving the same result without code evaluation). In the event where code evaluation is necessary, it is crucial for any user input to be very strongly validated, with as many restrictions as possible on user input.