Unsafe file uploads occur when the web server fails to sufficiently validate the file’s size, type, name, contents, or what restrictions are placed on the file once it has been successfully uploaded. The application fails to validate the size of files that are uploaded. An attacker can serve a Denial of Service (DoS) to the application by uploading large files to the server as there is no file size limit. This may cause outages and slowdowns.

## Business Impact

Unsafe file upload can lead to reputational damage for the business due to a loss in confidence from users who are attempting to perform legitimate actions within the application. It can also lead to indirect financial loss due to the downtime of  the web server.

## Steps to Reproduce

1. Generate a large file using: {{command}}
1. Navigate to file upload functionality at: {{URL}}
1. Upload the large file generated in the first step

## Proof of Concept (PoC)

The screenshot below demonstrates the full exploit:

{{screenshot}}
