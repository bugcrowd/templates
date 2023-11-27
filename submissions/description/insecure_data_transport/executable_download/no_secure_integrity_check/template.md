# Executable File Download Without Secure Integrity Check

## Overview of the Vulnerability

Risk levels for an application are raised when executable files are able to be downloaded as it increases the chances of malicious files being downloaded and executing in the system, or on an end user’s device. An executable file can be downloaded within this application without encryption or a secure integrity check, enabling an attacker to observe the contents of the downloaded file through a network sniffing or Person-in-the-Middle (PitM) attack. An attacker could also download a malicious executable instead of the intended file. If the downloaded file contains sensitive information, the attacker could use this to perform further attacks on the application or impersonate a user.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure. It can also lead to data theft depending on the content on the downloadable executable files in the application.

## Steps to Reproduce

1. Enable a HTTP interception proxy, such as Burp Suite or OWASP ZAP
1. Route all application traffic through a HTTP interception proxy
1. Use a browser to navigate to: {{URL}}
1. Observe within the HTTP interception proxy that an executable file is downloaded unencrypted and does not go through an integrity check

## Proof of Concept (PoC)

The screenshot below shows that an executable file is downloaded unencrypted:

{{screenshot}}
