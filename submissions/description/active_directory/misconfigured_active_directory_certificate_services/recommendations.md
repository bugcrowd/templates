# recommendation(s)

Audit all certificate templates and remove the `CT_FLAG_ENROLLEE_SUPPLIES_SUBJECT` flag from templates that enable client authentication. Restrict enrollment permissions to only the accounts and groups that require each template. Additionally, enable Manager Approval on sensitive templates so that certificate requests require CA administrator authorization before issuance. Remove unnecessary templates from publication on the CA.
