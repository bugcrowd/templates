The JSON Web Tokens (JWT) used for authentication and authorization with the application were found to have an excessively long lifetime. This increases the risk of an attacker gaining unauthorised access to the application in the event of a token being stolen.

The lifetime of a JWT can be managed by the value of the expiry (“exp”) parameter specified within the token’s payload. Tokens used after this expiry time has passed should be regarded as invalid, resulting in access to the system being denied.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Proof of Concept (PoC)**

The following code snippet contains the base64 decoded payload from a JWT provided by the application, in which the date issued “iat” corresponds to {{value}} whilst the expiry “exp” corresponds to {{value}}. This equates to a lifetime of {{value}}.

```
<Base64 decoded JWT Contents>
```
