Reflected File Download (RFD) occurs when a user is forced to download a malicious file due to an injection vulnerability in URLs where content between two semi-colons is considered by the browser to be a file name and isn’t properly handled.

An attacker can use RFD within this application to force users to download malicious files on behalf of the domain and execute them to launch commands on their personal computers.

## Business Impact

RFD can lead to reputational damage for the business due to a loss in confidence and trust by users.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Append the URL with the following: {{payload}}
1. Observe that it forces a download

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the RFD:

{{screenshot}}
