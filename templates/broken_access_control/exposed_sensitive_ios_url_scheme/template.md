# Description


# Reproduction Steps


# References

- https://www.owasp.org/index.php/Mobile_Top_10_2016-M1-Improper_Platform_Usage
- https://developer.apple.com/library/content/documentation/iPhone/Conceptual/iPhoneOSProgrammingGuide/Inter-AppCommunication/Inter-AppCommunication.html


# Remediation Advice

Apple does not enforce the unique naming for App schemes, making it possible for a malicious app to use the same URL Scheme as a legitimate app, effectively hijacking the URL Scheme. As a result, it is important to keep the URL Scheme from being exposed.