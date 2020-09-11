## Description


## Reproduction Steps


## References

- https://www.acunetix.com/blog/articles/automated-detection-of-host-header-attacks/


## Remediation Advice

If the web application makes use of the host header value when composing the reset link, an attacker can poison the password reset link that is sent to a victim. If the victim clicks on the poisoned reset link in the email, the attacker will obtain the password reset token and can go ahead and reset the victim’s password. To protect your systems from this type of attack never trust the host header as it is controlled by the users.

