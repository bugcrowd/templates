# Recommendation(s)

Enable the following defensive measures across all file share services:

- Disable anonymous or guest access on all file share protocols (FTP, SMB, NFS).
- Disable SMBv1 and enforce SMBv3 with signing and encryption to protect data in transit.
- Apply share-level and file system permissions using the principle of least privilege, granting access only to accounts that require it. 
- If the SMB service is not required, disable it entirely.
