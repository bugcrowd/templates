# Client-Side Injection via Binary Planting (Default Folder Privilege Escalation)

## Overview of the Vulnerability

Client-side injection via binary planting is a vulnerability that results from client-side untrusted data, in the form of a binary file, being interpreted and executed by the system. Within the application an attacker is able to load a planted binary file on a local or remote file system, which is then loaded and executed by the application. As a result, the attacker is able to elevate their privileges in the default folder location.

## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust. It could also result in privacy violations, fraud, or account takeover depending on the type of privilege escalation obtained by the attacker.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Notice that {{value}} is loaded by the application when doing {{action}}
1. Create binary file using {{software}}
1. Upload binary file using {{action}}
1. {{action}} to see permissions executed by the system

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the binary planting:

{{screenshot}}
