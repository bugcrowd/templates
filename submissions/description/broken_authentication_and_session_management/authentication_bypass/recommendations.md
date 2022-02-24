# Recommendations

Authentication bypass can be remediated by implementing a handful of best practices relating to authentication and session management to ensure secure implementation. These include:

- Ensuring that all authentication occurs over an encrypted connection using HTTPS. This connection all attempts to connect over HTTP should be redirected to HTTPS
- Implementing IP based rate limiting to disrupt attempts of brute-force attacks
- Enforcing an effective password policy
- Preventing username enumeration by using the same generic error message upon an incorrect login attempt regardless of whether the username is valid or not. This also includes ensuring that the response time from the server is the same and returning the same HTTP status code
- Implementing multi-factor authentication

The verification logic of the application, as well as all of the above, should be thoroughly tested during the development and QA phases of an application build.
