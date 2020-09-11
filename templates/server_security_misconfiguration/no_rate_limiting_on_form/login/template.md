## Description


## Reproduction Steps


## References


## Remediation Advice

1. Use a `CAPTCHA` to limit login attempts.
2. Use a rate limit per IP address to throttle the amount of login requests that can be made in a certain amount of time.
3. Be careful about locking a user account out as a result of rate limiting.
