The system clipboard leaks sensitive information when performing a copy and paste function within the application. An attacker could abuse this clipboard leak to steal sensitive information that a user copied to their clipboard in the application.

#### Business Impact

This vulnerability can lead to reputational damage for the business due to a loss in confidence and trust by users.

#### Steps to Reproduce

1. Create and install the following malicious application capable of accessing the clipboard: {{malicious application}}
1. Log in to {{application}}
1. Navigate to the following endpoint: {{value}}
1. Copy some sensitive information to the clipboard
1. Within the malicious application, observe the sensitive information through the clipboard

#### Proof of Concept (PoC)

The screenshot(s) below demonstrates the leak from the system clipboard:

{{screenshot}}
