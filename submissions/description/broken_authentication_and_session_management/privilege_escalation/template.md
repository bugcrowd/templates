# Broken Authentication Allows Privilege Escalation

## Overview of the Vulnerability

Authentication methods identify and confirm that a user is who they say they are which allows for the appropriate access controls to be given to that user. However, these access controls can be bypassed by a malicious attacker due to broken authentication and broken session management within an application. Authentication and session management controls  can be bypassed through a variety of ways including, calling an internal post authentication page, modifying the given URL parameters, by manipulating the form, or by counterfeiting sessions.

A malicious attacker can perform a variety of actions through bypassing authentication methods and is limited only by the permissions of the user account that they have access to. This could include viewing or editing sensitive customer data, viewing or editing other user permissions, and taking over user accounts. This privilege escalation by the malicious attacker enables them to have access to more resources or functionality within the application.

Vulnerability Specifics to the Application:

The authentication method for {{application}} at {{url}} is being bypassed through {{action}}. This allows a malicious attacker to perform {{action}} which abuses the permissions of the privileged user.

## Steps to Reproduce

<!-- Prerequisites and environment used for testing - please fill in as needed

Prerequisites:

- Having access to two different levels of user permissions
- Having HTTP interception proxy (such as Burp Suite or OWASP ZAP) set up with the browser

Environment:
Browser and version:
Operating System and version:
Tools used and versions of each: 
User Agent: 
-->

Example:

1. Using {{browser-used}}, navigate to {{url}}
2. Login as User A, an Admin user. This user is a known Admin due to their ability to modify or delete other user accounts
3. Login as a User B, a user within a specific permissions group
4. With a HTTP interception proxy enabled, such as Burp Suite or OWASP ZAP, click the dropdown at the top left of the page and click 'Control Panel'
5. This will prompt User B  to enter a key-phrase. Enter 0000001,  and hit Submit making sure to capture the request with the HTTP interception proxy. (always third-person, remove ‘you’)
6. Multiple requests will be made. Forward them until you see a POST with parameters that includes {{parameter}}
7. Modify the parameter to "{{payload}}" and turn off interception in the proxy
8. User B will be presented with a panel that includes live depots and allows for redirection and dispatch of shipping, as seen for User A.

## Proof of Concept (PoC)

The screenshots below demonstrate the authentication method being bypassed at {{url}}.

Unauthenticated view:

{{screenshot}}

Bypassing authentication and escalating privileges:

{{screenshot}}

Privileged user view:

{{screenshot}}

## Demonstrated Impact

The impact of privilege escalation can vary in severity depending on the degree of access to resources or functionality the malicious attacker is able to gain. Generally, privilege escalation can result in the modification or theft of data, including any Personally Identifiable Information (PII) stored within the application. This can lead to financial loss from a compromised application, legal ramifications, and reputational damage of {{program}} and their users.

A malicious attacker could abuse this authentication bypass further to {{action}} by abusing the privileged users permissions through {{payload}}. This is demonstrated in the screenshot below:

{{screenshot}}
