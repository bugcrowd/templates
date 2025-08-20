The application was found to have no account lockout enforced, thereby potentially allowing an attacker to brute force accounts for an indefinite period. 

An account lockout is a countermeasure whereby a user account is prevented from logging in temporarily after an incorrect password is supplied a fixed number of times. The lack of account lockout makes the application particularly vulnerable to brute force attacks, which could lead to the direct compromise of users’ accounts. 

It is normally trivial to determine the difference between a successful and failed login attempt automatically. Therefore, it is possible for an attacker to write a script to continuously attempt to login with many different passwords and report on any that were successful. Without a strong password policy in place, this technique is likely to succeed.

**Business Impact**

Having no account lockout can result in reputational damage for the business through the impact to customers’ trust as they could believe that the business doesn’t take their account security seriously or trust that their data within will remain secure.

**Proof of Concept (PoC)**

The following screenshot shows the use of a tool to automate the numerous login requests to the application. As visible from the response statuses, it was possible to successfully login to the application after submitting 25 consecutive invalid login requests:

{{screnshot}}
