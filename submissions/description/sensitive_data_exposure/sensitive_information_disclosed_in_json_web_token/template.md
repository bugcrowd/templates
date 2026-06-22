The JSON Web Tokens (JWT) disclosed sensitive information such as Personally Identifiable Information (PII) and role details, including the following:

* First name
* Last name
* Username
* Email address
* Account permissions for the application

A JWT is a compact means of representing information (referred to as claims) to be transferred between client and server. Whilst tokens are signed to prevent forgery or manipulation, the claims are base64 encoded and trivial to decode. An attacker that can recover an old JWT would be able to read this information and enumerate limited user details.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.


**Proof of Concept (PoC)**

The following code snippet contains the base64 decoded contents of the JWT:

```
<Base64 decoded JWT Contents>
```
