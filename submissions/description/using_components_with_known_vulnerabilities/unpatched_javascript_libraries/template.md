The application was found to be using outdated and unpatched JavaScript libraries. Without security updates, these libaries are vulnerable to a number of publicly disclosed vulnerabilities. 

Given their close integration with the Document Object Model (DOM), JavaScript libraries are a prime target for Cross Site Scripting (XSS) attacks. 

{{Delete if not applicable}} Additionally, further JavaScript libraries were identified that are no longer maintained. Consequently, these libraries will no longer be able to receive security updates and patches for known vulnerabilities.

The affected software versions and related vulnerabilities have been listed below:

{{example formatting below}}

>**[Bootstrap v3.4.1](https://getbootstrap.com/)**
>- Bootstrap before 4.0.0 is end-of-life and no longer maintained
>- [CVE-2024-6485](https://nvd.nist.gov/vuln/detail/CVE-2024-6485): XSS in bootstrap button component
>- [CVE-2024-6484](https://nvd.nist.gov/vuln/detail/CVE-2024-6485): XSS in carousel component

**Business Impact**

Outdated JavaScript libraties can lead to reputational damage for the business due to a loss in confidence and trust by users.

**Proof Of Concept (PoC)**

Navigate to the following JavaScript library files and view the version numbers disclosed at the top of the files:

{{direct link to source file}}
```
* Bootstrap v3.4.1 (https://getbootstrap.com/)
 * Copyright 2011-2019 Twitter, Inc.
 * Licensed under the MIT license
 */
```
