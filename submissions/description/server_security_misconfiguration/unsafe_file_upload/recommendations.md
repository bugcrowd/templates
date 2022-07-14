# Recommendation(s)

There is no single technique to prevent unsafe file uploads. However, implementing the right combination of defensive measures within the application will prevent or limit the impact. Some best practices include the following:

- Allow only specific file types to be uploaded which are dictated by business functionality
- Filter and check all content uploaded for viruses. Everything that does not pass strict validation should be discarded
- Set a minimum and maximum file size and naming length, ensuring that only alpha-numeric characters are accepted and that only a single period is used to to designate between the file name and the extension type.
- Don’t display the path of the uploaded file to the end users

For more information, please see:

- <https://cheatsheetseries.owasp.org/cheatsheets/File_Upload_Cheat_Sheet.html>
- <https://cwe.mitre.org/data/definitions/434.html>
