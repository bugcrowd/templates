Same-Site Scripting is a Domain Name Server (DNS) misconfiguration on localhost entries that can allow an attacker to execute commands on the same site. An attacker can use Same-Site Scripting in tandem with a Cross-Site-Scripting attack to break the Same Origin Policy and extract state data to route requests to their personal machine.

## Business Impact

Same-Site Scripting can lead to reputational damage for the business due to a loss in confidence and trust by users.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Use {{program}} on the {{target}}
1. Observe the following value in the output contains 127.0.0.1 without a trailing `.`:

{{screenshot}}

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the Same-Site Scripting:

{{screenshot}}
