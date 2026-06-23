Server Message Block (SMB) is a network file sharing protocol used to access files and directories on remote servers. When anonymous session access is enabled on an SMB share, an attacker can connect and view or download shared files without credentials. This allows an attacker to access files on the share, which may include application configuration, internal documentation, database exports, or credentials stored in plaintext.

**Business Impact**

A misconfigured file share may expose internal files to unauthorized parties. This can result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Open an SMB client such as `smbclient` and connect to {{smb_host}} using a null session: `smbclient -L //{{smb_host}} -N`
1. Confirm that the server returns a list of available shares without requiring credentials
1. Navigate to {{directory_path}} and list the files available
1. Download {{filename}} to confirm that file contents are retrievable by an unauthenticated user

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
