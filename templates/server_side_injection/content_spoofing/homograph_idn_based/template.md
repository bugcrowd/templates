## Description


## Reproduction Steps


## References

- https://www.icann.org/news/announcement-2005-02-23-en
- http://www.securityfocus.com/bid/12461
- https://www.cvedetails.com/cve/CVE-2005-0238/


## Remediation Advice

If disallowing URLs originating from user input is not an option, allow Unicode URLs only if all the characters belong to the same language that is chosen by user settings; display punycode URL otherwise. Some modern browsers will display these characters as punycode, e.g. spoofed `аррӏе.com` being `xn--80ak6aa92e.com`. However there are some best practices like use of an identity or password manager that can be recommended to users to help protect them against phishing.

