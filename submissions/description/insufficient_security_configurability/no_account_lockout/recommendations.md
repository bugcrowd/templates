**Recommendation**

An account lockout should be enforced to provide an extra layer of defence against brute force attacks, in addition to a strong password policy. A reasonable account lockout policy would be to lockout an account for fifteen minutes if five invalid login attempts were made within a ten-minute period, however this can be adapted depending on business requirements or the sensitivity of the application. 

It is important to ensure that the lockout is not permanent, otherwise this can be used to perform denial of service attacks against the system by purposely locking valid accounts out.