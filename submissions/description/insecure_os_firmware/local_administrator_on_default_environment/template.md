# Local Administrator on Default Environment

## Overview of the Vulnerability

The current configuration of the device uses a local administrator account as the default environment setting. This configuration inherently provides administrator-level access to the running processes and access, posing a significant security risk. If an attacker compromises the application or device, they can gain elevated privileges automatically, allowing for extensive control over the device's functions and data.

## Business Impact

Operating devices under local administrator accounts by default increases the risk of severe security breaches. An attacker with administrator-level access can disable security measures, install malicious software, and access or alter sensitive information. This could lead to operational disruptions, data breaches involving sensitive customer or business information, and significant financial and reputational damage to the organization. Furthermore, this practice may fail to comply with security standards and regulatory compliance requirements.

## Steps to Reproduce

1. Open the device and use a TTY Cable to connect to the header pins found in the screenshot below:
{{screenshot}}
1. Using a serial connection with the command below, connect to the device:
{{command}}
1. Press enter then type the command `id`.
1. You'll see the response is `id=0` which is a local administrator account.

or

1. Plug in a keyboard and power on the device.
2. On boot, spam the escape key until a new prompt appears, and click Exit.
3. Now on the desktop, open a terminal and type the command: {{command}}.
4. You'll see the response shows the user is a local administrator account.

## Proof of Concept (PoC)

The following screenshot(s) demonstrate(s) this vulnerability:

{{screenshot}}
