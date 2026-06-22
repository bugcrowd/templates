The application used security questions (also referred to as 'secret questions') for the purposes of user verification. 

In general, the use of security questions when determining authentication or authorisation outcomes can weaken the overall security of the application. This is due to the likelihood that the answers to such questions can be publicly discoverable, easily guessed or trivial to answer. This likelihood is made greater when users are able to specify the security questions themselves, leading to no restrictions being in place for minimum requirements of complexity.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Proof of Concept (PoC)**

The following screenshot demonstrates the applications use of security questions to verify the identity of the user:
>
>{{screenshot}}
