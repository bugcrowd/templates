When the registration implementation for an application is weak, it diminishes the integrity of the overall authentication process. An application's registration process can be weakened by a connection over HTTP, or by allowing users to submit a disposable or alias email address to register an account, for example.The weak registration implementation for this application could allow an attacker to abuse the registration process and bulk register fake user profiles to launch spam campaigns.

#### Business Impact

Having a weak registration implementation can result in reputational damage for the business through the impact to customers’ trust as they could believe that the business doesn’t take their account security seriously or trust that their data within will remain secure.

#### Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Register an account
1. {{action}} and observe that the registration implementation is weak

#### Proof of Concept (PoC)

The following screenshot shows the weak registration implementation:

{{screenshot}}
