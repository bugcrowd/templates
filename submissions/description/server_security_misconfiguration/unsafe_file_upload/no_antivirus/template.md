Unsafe file uploads occur when the web server fails to sufficiently validate the file’s size, type, name, contents, or what restrictions are placed on the file once it has been successfully uploaded. The application fails to check if files contain viruses or viral signatures. Therefore, an attacker can host malicious files on the server and serve them to victims under the same domain.

## Business Impact

Unsafe file upload can lead to reputational damage for the business due to a loss in confidence from users who are attempting to perform legitimate actions within the application. It can also lead to indirect financial loss due to the downtime of  the web server.

## Steps to Reproduce

1. Generate a malicious file using: {{command}}
1. Navigate to file upload functionality at: {{URL}}
1. Upload the large file generated in the first step

## Proof of Concept (PoC)

The screenshot below demonstrates the full exploit:

{{screenshot}}
