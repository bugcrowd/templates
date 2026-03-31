# recommendation(s)

Use Group Managed Service Accounts (gMSA) which automatically rotate 240-character cryptographically random passwords. For accounts that cannot use gMSA, enforce passwords of at least 25 characters with regular rotation. 

Additionally, audit all accounts with registered SPNs and remove SPNs from accounts that do not require them. Apply the principle of least privilege to all service accounts. Monitor for high volumes of TGS requests from single accounts using Windows Security Event 4769, a pattern which indicates Kerberoasting activity.
