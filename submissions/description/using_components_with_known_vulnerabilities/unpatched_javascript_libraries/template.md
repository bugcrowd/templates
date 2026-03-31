The application includes one or more outdated and unpatched client-side JavaScript libraries. Without security updates, these libraries contain a number of publicly disclosed vulnerabilities. Given their close integration with the Document Object Model (DOM), JavaScript libraries are a prime target for Cross Site Scripting (XSS) attacks. These unpatched javascript libraries increase the attack surface available to an attacker.

{{Delete if not applicable}} Additionally, further JavaScript libraries were identified that are no longer maintained. Consequently, these libraries will no longer be able to receive security updates and patches for known vulnerabilities.

**Business Impact**

Outdated JavaScript libraries can lead to reputational damage for the business due to a loss in confidence and trust by users.

**Steps to Reproduce**

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Use a browser to navigate to: {{URL}}
1. Identify the {{library_name}} library loaded at {{library_path}}
1. The affected software versions and related vulnerabilities have been listed below:
>
> **[Bootstrap v3.4.1](https://getbootstrap.com/)**
> - Bootstrap before 4.0.0 is end-of-life and no longer maintained
> - [CVE-2024-6485](https://nvd.nist.gov/vuln/detail/CVE-2024-6485): XSS in bootstrap button component
> - [CVE-2024-6484](https://nvd.nist.gov/vuln/detail/CVE-2024-6485): XSS in carousel component

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
