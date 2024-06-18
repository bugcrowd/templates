# Recommendation(s)

There are a number of best practices involved with implementing email validation, including the following:

- Implement server-side validation for email verification tokens.
- Ensure effective rate limiting controls are in place to prevent automated account creation, potential verification bypass attempts, and email inboxes from being bombarded with emails.
- Ensure that email verification tokens have a suitable expiring time and cannot be reused.
