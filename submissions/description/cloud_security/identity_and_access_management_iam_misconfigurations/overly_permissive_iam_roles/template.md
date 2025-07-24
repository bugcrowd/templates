Overly permissive Identity and Access Management (IAM) roles grant more permissions than necessary for a user or service to perform the intended functions of their role. A lack of least privilege creates a larger attack surface, allowing an attacker who compromises an entity with an overly permissive role to perform a larger set of actions. This can lead to unauthorized access, data manipulation, or full control over cloud resources.

**Business Impact**

This vulnerability can result in financial losses and regulatory fines, as well as reputational damage and a loss of customer trust.

**Steps to Reproduce**

1. Identify the following IAM role or policy that appears to have excessive permissions: {{IAM role/policy}}
1. Perform an action that is outside the normal scope of the role's intended function but is permitted by its overly broad policy: {{unintended action}}
1. Observe that the unintended action is successfully executed, demonstrating the excessive permissions

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:

{{screenshot}}
