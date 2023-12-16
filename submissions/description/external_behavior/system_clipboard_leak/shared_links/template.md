# System Clipboard Leak (Shared Link)

## Overview of the Vulnerability:

The system clipboard, used when performing a copy and paste function, leaks sensitive information. An attacker could abuse this clipboard leak to steal confidential shared links that a user created and copied to their clipboard within the application.

## Business Impact:

This vulnerability can lead to reputational damage for the business due to a loss in confidence and trust by users.

## Steps to Reproduce:

1. Create and install the following malicious application capable of accessing the clipboard: {{malicious application}}
1. Log in to {{application}}
1. Navigate to the following endpoint: {{value}}
1. Copy some sensitive information to the clipboard
1. Within the malicious application, observe the sensitive information through the clipboard

## Proof of Concept (PoC):

The screenshot(s) below demonstrates the leak from the system clipboard:

{{screenshot}}
