# Unsafe File Upload Using File Extension Filter Bypass

## Overview of the Vulnerability

Unsafe file uploads occur when the web server fails to sufficiently validate the file’s size, type, name, contents, or what restrictions are placed on the file once it has been successfully uploaded. The application fails to validate the extension type of files that are uploaded, allowing an attacker to upload unsafe files to the web server which can be sent to and executed by users.

## Business Impact

Unsafe file upload can lead to reputational damage for the business due to a loss in confidence from users who are attempting to perform legitimate actions within the application. It can also lead to indirect financial loss due to an attacker reading or manipulating files on the web server.

## Steps to Reproduce

1. Enable a HTTP intercept proxy, such as Burp Suite or OWASP ZAP
1. With the HTTP intercept proxy turned on, use a browser to navigate to: {{URL}}
1. Intercept the request in the HTTP intercept proxy:

```HTTP
{{Request}}
```

1. Change the following parameter to append a different value to the extension, as seen below:

```HTTP
{{Request}}
```

1. Resend the request

## Proof of Concept (PoC)

The screenshot below demonstrates the full exploit:

{{screenshot}}
