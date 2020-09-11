## Description


## Reproduction Steps


## References

- https://lightningsecurity.io/blog/race-conditions/
- https://blog.securitycompass.com/moving-beyond-the-owasp-top-10-part-1-race-conditions-912dccbb7c14
- https://medium.com/in-the-weeds/fixing-a-race-condition-c8b475fbb994
- https://blog.arkency.com/2015/09/testing-race-conditions/
- http://www.javacreed.com/what-is-race-condition-and-how-to-prevent-it/
- https://blog.golang.org/race-detector


## Remediation Advice

The key to preventing a race condition is to find a way to synchronize or otherwise strictly control the order of operations in potentially vulnerable functions and actions. The best way to do this is through locks. Most programming languages have a built-in locking functionality for data; for example, Python has “threading.Lock”, and Go has “sync.Mutex”. Refer to the documentation for your programming language of choice for more information. If the language has multi-threaded or asynchronous capabilities built-in, it should have some form of locking mechanism available to you.
