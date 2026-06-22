The application used JSON Web Tokens (JWT) for authentication and authorization. The JWT's were signed using the HS256 (HMAC with SHA-256) algorithm.

Due to the symmetrical nature of this algorithm which uses a shared secret key, the secret that is used to generate the JWT signature is susceptible to brute-force guessing techniques. If the secret is sufficiently short in character length and weak in entropy, then it may be possible to discover the secret as the result of performing an automated secret-guessing attack ("brute-forcing" the hash).

Should the secret key be compromised, an attacker would be able to create valid JWTs and gain unauthorized access to the application. Furthermore, as the identity, roles and privileges of the user are specified in the JWT, this could also allow the impersonation of any user and the escalation of privileges to gain administrative permissions over the application.

**Business Impact**

This vulnerability could lead to data theft through the attacker’s ability to manipulate data through their access to the application, and their ability to interact with other users, including performing other malicious attacks, which would appear to originate from a legitimate user. These malicious actions could also result in reputational damage for the business through the impact to customers’ trust.

**Proof of Concept (PoC)**

The following code snippet contains the base-64 decoded header contents of the JWT, in which the algorithm used to sign the JWT can be seen within the 'alg' field: 

```
<JWT Header>
```
