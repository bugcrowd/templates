Mobile security misconfigurations can occur at any level of the application stack and can involve unpatched software, unprotected files or pages, or unauthorized access to the application. Tapjacking occurs when user input is captured by an application it was not intended for. This usually occurs through screen overlays that gather input when a user believes they are inputting information into a different screen.

An attacker could abuse an application that does not protect sensitive UI functionality from tapjacking by stealing UI inputs from a user that uses the application on specific Android OS versions. With access to sensitive data through a tapjacking attack, an attacker could perform further attacks on the application, the business, or its users.

## Business Impact

This vulnerability can lead to reputational damage as customers may view the application as insecure.

## Steps to Reproduce

1. View the source code files of the application
1. Navigate to {{url}} and view the sensitive UI functionality does not have the attribute `"filterTouchesWhenObscured="true"`, thus allowing tapjacking attacks on certain Android OS versions

## Proof of Concept (PoC)

The screenshot below shows the mobile security misconfiguration:

{{screenshot}}
