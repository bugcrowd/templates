Anonymous access to File Transfer Protocol (FTP) or Server Message Block (SMB) file shares allows any unauthenticated remote user to connect and browse directory contents without credentials. This allows an attacker to access files stored on the server, which contains only non-sensitive data such as public documentation, marketing materials, or default installation files. While the exposure does not directly reveal credentials, PII, or internal configuration, it confirms the presence of a misconfigured service that accepts unauthenticated connections, which aids an attacker in reconnaissance.


**Business Impact**

A misconfigured file share may expose internal files to unauthorized parties. If the share contains credentials, configuration files, source code, or customer data, the exposure of non-sensitive data signals a configuration weakness that may indicate broader issues with server hardening. This could result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Open an FTP or SMB client and connect to {{host}} on port {{port}}
1. Authenticate using anonymous or null session credentials
1. Confirm that the server accepts the connection and returns a directory listing
1. Enumerate the available directories and files on {{share_path}}
1. Download {{filename}} to confirm that file contents are retrievable but non-sensitive

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
