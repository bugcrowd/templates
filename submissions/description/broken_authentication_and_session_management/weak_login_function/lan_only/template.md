Weak login functionality arises from improperly configured authentication practices which weakens the security of the authentication process of an application. This application does not protect the security of users’ credentials as the login is only available via a LAN connection. A malicious attacker can Person-in-the-Middle (PiTM) communication between the user and the application on the LAN to steal administrative credentials and login to the system using admin privileges.

## Business Impact

Weak login function can lead to indirect financial loss through an attacker accessing login credentials and gaining access to the user’s account. From here, the attacker could delete, or modify data. This could also result in reputational damage for the business through the impact to customers’ trust. The severity of the impact is dependent on the sensitivity of the data being stored in, and transmitted by the application, as well as the privileges of the account the attacker gains access to.

## Steps to Reproduce

1. On the LAN, poison the DNS and ARP tables of the target:

{{screenshot}}

1. Man-in-The-Middle (MiTM) communication and route traffic through your computer:

{{screenshot}}

1. Forward the request to see that the requests are unencrypted in transit

## Proof of Concept (PoC)

The following screenshots show the full exploit:

{{screenshot}}
