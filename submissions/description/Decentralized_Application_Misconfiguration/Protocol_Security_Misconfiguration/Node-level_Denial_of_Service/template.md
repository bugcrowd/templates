Node-Level Denial of Service (DoS) vulnerabilities occur when a protocol’s nodes are susceptible to overload or disruption from excessive requests, inefficient resource management, or lack of rate limiting. Through this misconfiguration, an attacker can flood nodes with requests, causing network disruptions or temporary downtime. A node-level DoS attack can also prevent legitimate users from accessing the protocol, disrupting operations, and degrading the service's reliability.

**Business Impact**  

A DoS attack can impact availability, causing loss of trust and a potential decline in user engagement. Frequent disruptions could also affect the protocol’s revenue, especially if the network relies on transaction fees. In competitive markets, such reliability issues may damage the protocol’s reputation, causing long-term losses.

**Steps to Reproduce**  

1. Navigate to the following URL: {{URL}}
1. Identify the network nodes used by the protocol
1. Use {{ tool}} to send a high volume of requests to a specific node
1. Observe the node’s response to see if it slows or becomes unresponsive
4. Observe that the node lacks rate-limiting mechanisms

**Proof of Concept**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
