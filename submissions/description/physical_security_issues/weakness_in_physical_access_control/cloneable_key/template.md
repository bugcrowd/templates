# Cloneable Key

## Overview of the Vulnerability

The physical access control system securing the device relies on a physical key that is susceptible to cloning. This design flaw allows attackers, with brief access to the key, to create an unauthorized copy. Access to the key could be obtained through various means, including insider threats or by employing teleduplication techniques, where a photograph of the key is used to replicate it. Consequently, An attacker can gain unauthorised access by using a cloned key, circumventing intended security measures.

## Business Impact

The possibility of key cloning poses a considerable security threat, undermining the physical security of the device and the safeguarding of the data and systems it contains. Unauthorized access achieved through a cloned key can lead to significant adverse outcomes, such as data breaches, unauthorized changes to the device, and the theft of sensitive or proprietary information. The repercussions of such incidents include financial losses, reputational damage to the organization, and diminished confidence from customers and business partners.

## Steps to Reproduce

1. Obtain access to the physical key for a short period of time (2 minutes).
2. Using a clay mold, dust the key with Talcum powder, and take an impression of the key briefly, and remove the key.
3. With the clay mold, melt a low-melting point metal such as Woodsmetal and pour it into the mold, and let it cool.
4. Remove your new key and test that the key does function inside of the lock.

or

1. Briefly photograph the key, with the Bitting in full view.
2. Using a vector graphic tool, such as Inkscape, scale an image of the key based upon the Bow of the keyblade, and measure each valley on the key.
3. With the image, look at the bow and you'll notice it says SC1, using the SC1 Depth and Space measurements which are public, we can identify the bitting as: {{bittingcode}}
4. Using a Key cutting machine or Impressioning file and Calipers, cut the key to the correct depth and space, and test to verify the key does work inside of the lock.

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
