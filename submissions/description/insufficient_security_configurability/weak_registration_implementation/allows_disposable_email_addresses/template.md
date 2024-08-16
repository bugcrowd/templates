When the registration implementation for an application is weak, it diminishes the integrity of the overall authentication process. The application allows users to submit a disposable or alias email address to register an account. An attacker can abuse this weakness to bulk register fake user profiles and use them to launch spam campaigns.

#### Business Impact

Having a weak registration implementation can result in reputational damage for the business through the impact to customers’ trust as they could believe that the business doesn’t take their account security seriously or trust that their data within will remain secure.

#### Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Register an account using a disposable email service
1. Observe that the account is created

#### Proof of Concept (PoC)

The following screenshot shows the weak registration implementation:

{{screenshot}}
