# Recommendation(s)

- Sanitize user-supplied input by removing or escaping ANSI escape sequences before displaying or processing it.
- Use a secure terminal library or renderer that does not execute or interpret ANSI escape codes from untrusted sources.
- Validate and strip any non-printable or control characters from user inputs.
