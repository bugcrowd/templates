The physical access control system designed to secure the device utilizes a master keyed system. In such systems, locks can be opened by multiple keys, each cut differently, but all locks within the system can also be opened by a single master key. This configuration presents a significant security vulnerability. An attacker with access to a mastered lock, or who comes into possession of a key from the system, could derive the master key. With the master key, the attacker would have the capability to open all locks within the system, severely compromising security.

#### Business Impact

The potential for an attacker to derive the master key and gain unrestricted access to all areas secured by the system poses a considerable threat. It could lead to unauthorized access to sensitive areas, data breaches, theft of physical and intellectual property, and other security incidents. Such breaches can have far-reaching consequences, including financial losses, damage to the organization’s reputation, and loss of customer trust. The use of a master keyed system thereby introduces a critical point of failure in the physical security infrastructure.

#### Steps to Reproduce

1. Obtain access to a lock from the master keyed system.
2. Apply a metal shim to the back of the lock cylinder where the key pins are binding.
3. Insert a key blank fully and slowly pull the key back while applying pressure to the metal shim.
4. Remove the core and key pins from the lock, then remove the master wafers, driver pins, and springs onto a pinning mat, making sure to keep the keys in order.
5. Measure each key pin and master wafer, and match it to a codebook for the depth and space of the key system.
6. Using a tool, such as KeySpace, enter the details for the key system, and cut test keys to suit.
7. After testing each key, the key with the bitting {{bitting}} is our master key for this system.

or

1. Obtain a key from the master keyed system, this can be a low privilege key.
2. Measure each key pin and master wafer, and match it to a codebook for the depth and space of the key system.
3. Measure the key for the depth of each cut, and match it to a codebook for the depth and space of the key system.
4. Using a tool, such as KeySpace, enter the details for the key system, and cut test keys to suit.
5. After testing each key, the key with the bitting {{bitting}} is our master key for this system.

#### Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
