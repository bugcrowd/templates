# Default Credentials

## Overview of the Vulnerability

Default credentials are credentials that are set as default by the manufacturer or supplier of hardware and software products. These credentials often have Administrator privileges. An attacker can take advantage of default credentials and login to administrative accounts using wordlists of usernames and passwords found online, which may give them the authority to change the state of the application or users’ accounts.

## Business Impact

Default credentials can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the application’s security of user accounts. If an attacker successfully guesses default credentials it can lead to user account compromise and data exfiltration.

## Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Enter the username and password combination {{Username:DefaultPassword}}
1. Observe the successful login to an Admin account

## Proof of Concept (PoC)

The screenshot(s) below demonstrates the default credentials:

{{screenshot}}
