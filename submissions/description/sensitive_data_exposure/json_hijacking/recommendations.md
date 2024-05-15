# Recommendation(s)

To prevent JSON hijacking from occurring, the following configurations can be set:

- Sanitize all data inputs both server and client-side.
- Enable CSRF protections by requiring a predefined, random value for all JSON requests
- Only return JSON objects through HTTP POST requests, as script tags will only generate through HTTP GET requests
- Do not let web browsers interpret JSON objects as valid JavaScript code
