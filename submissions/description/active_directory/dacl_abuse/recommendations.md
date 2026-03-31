# recommendation(s)

Audit DACLs across the directory and remove dangerous permissions such as GenericAll, GenericWrite, WriteDACL, WriteOwner, and ForceChangePassword from non-administrative accounts and groups. Additionally, use tools such as BloodHound in a defensive capacity to map all attack paths through DACL permissions and prioritize remediation of the shortest paths to Domain Admins. Implement AdminSDHolder protections for sensitive accounts and groups.
