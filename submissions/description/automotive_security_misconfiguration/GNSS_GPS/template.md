Global Navigation Satellite System (GNSS) and Global Positioning System (GPS) spoofing involves the broadcast of fake GNSS/GPS signals to fake the position of a vehicle, or otherwise make the positioning unreliable. An attacker is able to send fake GNSS/GPS signals to the receiver and successfully spoof a vehicle’s position.

#### Business Impact

This vulnerability can result in reputational damage and indirect financial loss for the business through the impact to customers’ trust in the security and safety of the automotive vehicle.

#### Steps to Reproduce

1. The GNSS/GPS signal is identified by using {{hardware}} on {{target}}
1. Connect to {{target}} by using {{application}} with {{hardware}}
1. Inject the following payload using {{hardware}}:

{{payload}}

1. Observe that the GNSS/GPS signal has been spoofed

#### Proof of Concept (PoC)

The image(s) below demonstrates the process by which an attacker identifies where the GNSS/GPS communication occurs. It also shows how an attacker connects to the {{target}}, and is able to inject the payload(s), causing GNSS/GPS spoofing:

{{screenshot}}
