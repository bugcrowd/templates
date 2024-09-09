When telnet is enabled, all data sent over the connection is unsecured as telnet transmits all data via plain text. An attacker could perform a Person-in-the-Middle (PitM) attack and access sensitive data being transmitted via the telnet connection. With access to sensitive data through a PitM attack they could perform further attacks on the application, the business, or its users.
  
## Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

## Steps to Reproduce

1. Issue the following command line in the terminal window: `telnet {{application}}`
1. Observe that a telnet connection is successfully established between the client computer and the application

## Proof of Concept (PoC)

Below is a screenshot demonstrating that a successful telnet connection can be made:

{{screenshot}}
