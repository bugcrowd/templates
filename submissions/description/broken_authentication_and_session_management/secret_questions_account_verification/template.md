The application uses secret questions (also known as security questions or knowledge-based authentication) as a method for verifying a user's identity during account recovery or sensitive operations. Secret questions weaken the overall security of the application as the answers are often guessable, publicly available through social media, or shared across multiple services. An attacker who can determine or guess the answer to a user's secret question can bypass the intended verification step and gain access to the account recovery flow.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company as customers may view the application as insecure.

**Steps to Reproduce**

1. Use a browser to navigate to: {{URL}}
1. Enter a username and proceed to the account verification step
1. Observe that the application presents a secret question: {{secret_question}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
