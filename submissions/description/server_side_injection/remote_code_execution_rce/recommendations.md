# Recommendation(s)

RCE attacks are challenging to prevent because the chain of execution to effect entry can vary widely. The key to minimizing the number of vulnerabilities in the environment is to patch and update all software in a consistent and repeatable update cycle.

All user inputs should be sanitized using allow lists (valid characters and code strings), disallow ( invalid characters and code strings), and escape sanitizing (elimination of invalid data requests). It is best practice that all user input goes through a validation process which only allows content to be processed by the database if it passes validation.
