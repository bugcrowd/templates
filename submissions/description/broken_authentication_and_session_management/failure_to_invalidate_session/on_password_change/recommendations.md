# Recommendations

All user sessions should be invalidated server-side when the user resets their password. At a minimum, all non-current user sessions should be invalidated sever-side when the user changes their password.

For further information, please see:
<https://cheatsheetseries.owasp.org/cheatsheets/Session_Management_Cheat_Sheet.html#renew-the-session-id-after-any-privilege-level-change>
