A Computer Automated Public Turing Test test to tell Computers and Humans Apart (CAPTCHA) allows applications to tell whether a user is a human or a robot. A CAPTCHA can be bypassed when the implementation or its workflow is misconfigured, or when software can be used to bypass the challenge.

Due to the absence of a CAPTCHA, an attacker can leverage scripts and tools to make requests to critical functionality without a rate limit. Forms that are often firewalled by a CAPTCHA can also deny service for users when executing multiple read and write functions from the database.

**Business Impact**

A missing CAPTCHA can lead to reputational damage for the business due to a loss in confidence and trust by users.

**Steps to Reproduce**

1. Navigate to the following endpoint with CAPTCHA: {{value}}
1. Observe that CAPTCHA is missing for the following critical functionality: {{value}}

**Proof of Concept (PoC)**

The screenshot(s) below demonstrates the missing CAPTCHA:

{{screenshot}}
