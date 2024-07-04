# Recommendation(s)

There are a number of best practices involved with implementing strong access controls, including the following:

- Declare the type of access allowed for each resource and deny access by default, unless these specific access conditions are met by a user attempting to access the resource. To enforce these access controls, it’s important to use a single application wide mechanism.
- It is recommended that all critical information is stored server-side, with only a session ID being passed back and forth between the server and client.
- Similarly, the data being sent to the client should be encrypted to ensure that data cannot be viewed in transit, and it should be digitally signed to ensure the data's integrity.
- Thoroughly test and audit the access controls during the development and deployment lifecycle to ensure the security and integrity of the controls.

For further information, please see the following resources:

- <https://owasp.org/Top10/A01_2021-Broken_Access_Control/>
- <https://owasp.org/www-community/Access_Control>
