# Authentication Bypass

## Overview of the Vulnerability

Authentication bypass vulnerabilities allow an attacker to gain access to an account without having to go through the application's authentication procedure. 

Authentication bypass often occurs through logic flaws and incomplete implementation of authentication mechanisms. Bypassing the authentication mechanisms of this application allows an attacker to view or edit data or other user's permissions, take over user accounts, access unauthorized endpoints, or expose critical data, depending on the authorization of the account they gain access to.

## Business Impact

Authentication bypass can lead to data loss or theft through an attacker's access to data. The severity of which is dependent on the sensitivity of the data within the application. It can also result in reputational damage to the application or the company due to legitimate users not trusting the security of the application if the application's data becomes publicly available.

## Steps to Reproduce

1. Navigate to: {{URL}} and login as a regular user
1. In the URL, change the `/user` to `/user/administrator`
1. Observe that the application now allows the user to view other user's profile details. These actions are usually restricted to an authenticated user

## Proof of Concept (PoC)

The following image(s) show the full exploit:

{{screenshot}}

An attacker can bypass authentication or break session management to access the application's data.
