**Recommendation(s)**

Reduce the lifetime of the JWT by setting a shorter expiry value in the token’s payload. 

This should be appropriate to the specific use case in question, with the aim of shortening the lifetime of the token to the lowest practical value. For example, JWTs used to grant an active session to an application should expire in 24 hours, or less if the application is handling sensitive data.