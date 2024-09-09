During the deployment or configuration phases of the device, sensitive artifacts (which can include: configuration information, secrets, or credentials) are transferred to and stored on the device's storage medium. These artifacts are not adequately removed post-deployment or configuration. As a result, an attacker gaining access to the device could view these sensitive artifacts.

## Business Impact

The persistence of sensitive artifacts on the device's storage poses a significant risk to data confidentiality and system integrity. Unauthorized access to these artifacts can lead to security breaches, unauthorized system access, and the potential leakage of confidential information. The implications include not only immediate operational and financial losses but also long-term damage to the organization's reputation and trustworthiness, alongside potential regulatory non-compliance.

## Steps to Reproduce

1. Login to the device using the credentials supplied.
2. Open the file found at: {{filepath}}
3. You'll see that the file is a deployment script, viewing the variable, {{variable}} you'll see secrets used during deployment.

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
