# Recommendation(s)

All user inputs should be sanitized using allow lists (valid characters and code strings), disallow ( invalid characters and code strings), and escape sanitizing (elimination of invalid data requests). It is best practice that all user input goes through a validation process which only allows content to be processed by the database if it passes validation.

It is also important to keep all systems, software and operating systems up-to-date with a repeatable patch management process, as RCE vulnerabilities can exist within 3rd party components.
