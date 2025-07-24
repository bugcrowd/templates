Login portals for an application allow users to log in and modify how the application runs and the content it serves. This can include adding, removing, updating, or creating new content, account provisioning, data manipulation, and other configuration changes.

An attacker who is able to identify this exposed portal can then brute force credentials. If they successfully log in, they can access the backend interface and carry out activities with the privileges of the system.

**Business Impact**

Exposed portals can lead to indirect financial loss due to the attacker’s ability to modify, remove or create data within the admin portal. It can also cause reputational damage for the business due to a loss in confidence and trust by users.

**Steps to Reproduce**

1. Use a browser to navigate to the portal via the URL: {{URL}}
1. The following are the functionalities of the portal:

{{value}}

1. Execute {{action}} on the portal

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
