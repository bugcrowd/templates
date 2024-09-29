A lack of jailbreak (iOS) or root access (Android) detections in an application increases its attack surface and leaves it open to code analysis, reverse engineering, or modification of the application. An attacker could abuse the lack of jailbreak (iOS) or root access (Android) detections to access the internal file system of the application, or inject unauthorized code into the application.

**Business Impact**

This vulnerability can lead to indirect financial loss to the company due to data theft, application manipulation and corruption, or Denial of Service to customers and users of the application. It can also lead to reputational damage as customers may view the application as insecure.

**Steps to Reproduce**

1. Jailbreak (iOS) or gain root access (Android) to a mobile device
1. Install the application on the mobile device
1. Open the application and observe that the application does not prevent access or acknowledge that the mobile device has been jailbroken (iOS) or that root access (Android) has been gained, indicating it lacks a detection mechanism

**Proof of Concept (PoC)**

The screenshot below shows the lack of jailbreak (iOS) or root access (Android) detections:

{{screenshot}}
