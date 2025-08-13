# recommendation(s)

Implement strict access controls on all NFS shares, ensuring that only explicitly authorized IP addresses and hosts can mount them. Regularly audit NFS export configurations and file system permissions to prevent inadvertent exposure of sensitive data. Apply additional security features such as root_squash to prevent remote root users from having root privileges on the NFS share, nosuid to prevent set-user-ID or set-group-ID bits from taking effect, and noexec to prevent the execution of binaries on the mounted file system.

If possible, consider employing NFSv4 with Kerberos for robust authentication and encryption, if available and compatible with your environment.
