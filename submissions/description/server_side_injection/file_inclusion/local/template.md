# Local File Inclusion

## Overview of the Vulnerability

Developers often include external files to incorporate images and external code libraries into applications. Local file inclusion vulnerabilities can occur when an application allows files to be included in an unsafe way on a local machine, but the inclusion of remote files is denied. As a result, an attacker is able to manipulate the application by including a malicious file on the local machine, which is executed by the application or server. In doing so, an attacker can expose sensitive data, and in some instances gain Remote Code Execution (RCE).

## Business Impact

Local file inclusion can result in data theft and manipulation, and reputational damage for the business as customers' trust is negatively impacted by an attacker’s ability to access and modify data on a server.

## Steps to Reproduce

1. Using a browser, navigate to: `{{url}}/../../etc/hostname`
1. You will see the hostname of the server running this website

## Proof of Concept (PoC)

The screenshot below demonstrates the local file inclusion:

{{screenshot}}
