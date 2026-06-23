A file share service hosted on the application's infrastructure is configured in a way that permits unauthorized access to shared files or directories. The misconfiguration may involve weak access controls, overly permissive share permissions, missing authentication requirements, or exposure of the file share service to untrusted networks. An attacker who can reach the service can enumerate, read, or modify files on the share.

**Business Impact**

A misconfigured file share may expose internal files to unauthorized parties. If the share contains credentials, configuration files, source code, or customer data, the exposure can lead to further compromise of the application or its infrastructure. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact to the business is dependent on the sensitivity of the data being stored in, and transmitted by the application.

**Steps to Reproduce**

1. Identify the file share service running on {{host}} at port {{port}} using {{discovery_method}}
1. Attempt to connect to the file share using {{connection_method}}
1. Confirm that the connection succeeds with {{access_level}} access
1. Enumerate the available directories and files on {{share_path}}
1. Download {{filename}} to confirm that file contents are retrievable

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
