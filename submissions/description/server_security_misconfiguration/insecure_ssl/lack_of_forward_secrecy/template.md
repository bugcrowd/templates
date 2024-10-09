Forward secrecy uses temporary keys for the exchange of information between two parties. If a server's private key is compromised the session is still secure as it uses ephemeral keys for the exchange. When the application lacks forward secrecy, these security guarantees will rely solely on a public and private key interaction. An attacker will only require a private key to decrypt the data in transit.

**Business Impact**

Lack of forward secrecy can lead to reputational damage for the business due to a loss in confidence and trust by users who identify that there isn’t any forward secrecy.

**Steps to Reproduce**

1. Run a tool such as SSLScan, TestSLL, or SSLyze to scan the SSL/TLS configuration
1. Observe the results showing the lack of forward secrecy:

{{value}}

**Proof of Concept (PoC)**

The screenshot below demonstrates the use of a cipher suite with lack of forward secrecy:

{{screenshot}}
