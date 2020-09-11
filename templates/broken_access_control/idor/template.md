## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/Top_10_2013-A4-Insecure_Direct_Object_References
- https://github.com/OWASP/CheatSheetSeries/blob/master/cheatsheets/Insecure_Direct_Object_Reference_Prevention_Cheat_Sheet.md


## Remediation Advice

1. **Use per user or session indirect object references.** This prevents attackers from directly targeting unauthorized resources. For example, instead of using the resource's database key, a drop-down list of six resources authorized for the current user could use the numbers 1 to 6 to indicate which value the user selected. The application has to map the per-user indirect reference back to the actual database key on the server. OWASP's `ESAPI` includes both sequential and random access reference maps that developers can use to eliminate direct object references.
2. **Check access.** Each use of a direct object reference from an untrusted source must include an access control check to ensure the user is authorized for the requested object.

