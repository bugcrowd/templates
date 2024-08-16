Client-side injection is a vulnerability that results from untrusted client-side data being interpreted and executed by the system without any checks. Within the application an attacker is able to inject data in the form of JavaScript, or a binary file on a local or remote file system, which is then loaded and executed by the application. As a result, the attacker is able to invoke code remotely on the machine.

#### Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

#### Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Notice that {{value}} is loaded by the application when doing {{action}}
1. Perform {{action}} to see the injected code executed by the system

#### Proof of Concept (PoC)

The screenshot(s) below demonstrates the client-side injection:

{{screenshot}}
