# Recommendation(s)

Enable the following defensive measures across all file share services:

- Enforce authentication restrict access to authorized accounts using the principle of least privilege. 
- Disable anonymous or guest access on all file share protocols (FTP, SMB, NFS).
- Restrict share permissions to named accounts that require access and grant the minimum necessary privilege level (read-only where write is not needed).
- Ensure file share services are not exposed to untrusted networks by restricting access through firewall rules or network segmentation. If a file share service is not required, disable it entirely. 
- Migrate to encrypted protocols such as SFTP or SMBv3 with encryption where file transfer is necessary.
