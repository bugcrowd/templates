# recommendation(s)

Configure all LDAP servers and clients within the environment to require and enforce LDAP signing. This will ensure the integrity of LDAP communication and protect against tampering and NTLM relay attacks.

For LDAP signing to be enforced, this requirement must be configured on both the domain controllers and clients. If the server requires signing but the client does not support signing, the session will be terminated by the server. On a domain controller LDAP signing is managed using the policy setting Domain controller: LDAP signing requirements. On a Windows LDAP client the signing is managed by the policy setting Network security: LDAP client signing requirements.

After enforcing LDAP signing on the server, clients that rely on unsigned SASL (Negotiate, Kerberos, NTLM, or Digest) LDAP binds or on LDAP simple binds over a non-SSL/TLS connection stop working.
