NTLM relay from the System Center Configuration Manager (SCCM) management point to the site database is a vulnerability where the management point authenticates to the SQL Server site database using NTLM rather than Kerberos. An attacker who can intercept or coerce NTLM authentication from the management point can relay those credentials to the site database server. Successful relay grants the attacker the management point's database permissions, which typically include read and write access to the SCCM site database. This allows an attacker to modify site configuration, inject malicious deployments, elevate SCCM privileges, or extract credentials stored in the database.

**Business Risk**

Successful NTLM relay to the site database grants an attacker direct read and write access to SCCM configuration and deployment data. This can result in financial losses, damage to the organization's reputation, and erosion of customer trust, especially if sensitive customer information is compromised.

**Steps to Reproduce**

1. Identify the SCCM management point at {{management_point_hostname}} and the site database server at {{site_database_hostname}}
1. Set up an NTLM relay tool on {{attacker_host}} configured to relay captured authentication to {{site_database_hostname}} on port {{sql_port}}
1. Coerce NTLM authentication from {{management_point_hostname}} to {{attacker_host}} using {{coercion_method}}
1. Observe the relayed authentication succeeding against {{site_database_hostname}}
1. Execute a SQL query against the SCCM site database at {{site_database_hostname}} using the relayed session to confirm access, such as querying {{query}}
1. Confirm that {{database_output}} is returned, demonstrating read or write access to the site database

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
