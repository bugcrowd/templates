# Client-Side Injection via Binary Planting (Privilege Escalation)

## Overview
Cross-Site Scripting (XSS) is a type of injection attack where malicious scripts are injected into trusted websites. XSS vulnerabilities allow a malicious attacker to gain access to a user's account and carry out any actions that the user is able to perform, including accessing any of the user's data. The attacker might be able to gain full control over all of the application's functionality and data depending on the user's level of permissions.

A malicious attacker is able to load a planted binary on a local or remote file system, which is then loaded and executed by the application. From here, a malicious attacker is able to escalate privileges by performing {{action}}.

## Walkthrough & PoC

1. Navigate to Bugcrowd.com/vulnerable-endpoint

1. Notice that {{value}} is loaded by the applicationw when doing {{action}}

1. Create binary file using {{software}}

1. Upload binary file using {{action}}

1. {{action}} to see permissions executed by the system

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

A malicious attacker can invoke code remotely on the machine.


