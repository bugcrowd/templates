# Recommendation(s)

It is recommended to validate and sanitize the input fields of CSVs so that the content is read as text only by the spreadsheet editor. The appropriate content type should also be set in the response header when serving CSV files. For example, `Content-Type: text/csv`.
Additionally, dynamic formula injection can be prevented by not allowing user-supplied input to be directly interpreted as a calculation or formula. This can be achieved by removing the functionality, or implementing a separate mechanism that handles the user input securely.

For more information, please see:

- <https://owasp.org/www-community/attacks/CSV_Injection>
