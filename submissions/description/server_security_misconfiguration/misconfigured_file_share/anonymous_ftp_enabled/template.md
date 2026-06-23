Anonymous File Transfer Protocol (FTP) is a configuration that allows any remote user to connect to the FTP server without providing credentials. When anonymous access is enabled on a server hosting application files or internal resources, an attacker can connect to the FTP service and view, download, or upload files. This allows an attacker to access files stored on the server, which may include application source code, configuration files containing credentials, database backups, or internal documentation.

**Business Impact**

A misconfigured file share may expose internal files to unauthorized parties. This can result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Open an FTP client and connect to {{ftp_host}} on port {{ftp_port}}
1. Log in using the username `anonymous` and any value for the password, such as {{email_address}}
1. Confirm that the server accepts the anonymous login and presents a directory listing
1. Navigate to {{directory_path}} and identify files accessible without authentication
1. Download {{filename}} to confirm that file contents are retrievable by an unauthenticated user

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
