# recommendation(s)

Reset the computer account password to a suitably secure value.

To address weak machine account passwords and potential timeroasting vulnerabilities which may be present in the wider network:

- **Audit Pre-Windows 2000 Compatibility:** For computers created for pre-Windows 2000 compatibility within the last 30 days, ensure passwords are reset to suitably secure values. These accounts are initialized with a default weak password (matches the first 14 characters of their computer name) which will persist until being rotated.
- **Enable Automated Rotation:** Ensure the GPO "Domain member: Disable machine account password changes" is not enabled, allowing the default 30-day password rotation for all machine accounts.
- **Identify and Reset Stale Passwords:** Identify any machine accounts whose passwords have not expired/rotated in the last 30 days to identify and rectify issues preventing automated rotation.
