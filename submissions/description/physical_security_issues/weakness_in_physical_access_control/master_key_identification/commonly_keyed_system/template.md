# Commonly Keyed System

## Overview of the Vulnerability

The physical access control deployed to secure the device was found to use a lock keyed alike to commonly used keys. This scenario typically arises when locks are mass-manufactured with the same key configuration by vendors, intended for low-risk applications, or when a specific key standard is adopted with an expectation of limited use. When these lock systems are employed in contexts requiring higher security, like the device in question, the security efficacy is substantially reduced. The widespread availability or public knowledge of these keys means unauthorized individuals could easily obtain a key to gain access.

## Business Impact

Utilizing a commonly keyed system for securing devices intended to be secure significantly undermines the device's physical security. It opens avenues for unauthorized access, potentially leading to theft, data breaches, and compromise of the device's integrity. The perceived ease of bypassing such a security measure can damage an organization's reputation, lead to financial losses, and erode customer trust, especially if sensitive information or valuable assets are compromised.

## Steps to Reproduce

1. Looking at the lock, we can identify markings showing {{markings}} which indicate the lock in use is a {{locksystem}}
2. This lock matches to the key {{key}} which is commonly keyed to other systems.
3. Attempt to unlock the device using the key.

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
