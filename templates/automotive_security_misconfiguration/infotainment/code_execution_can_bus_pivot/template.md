# Description


# Reproduction Steps


# References

- https://motherboard.vice.com/en_us/article/3kvw8y/researchers-hack-car-infotainment-system-and-find-sensitive-user-data-inside
- https://www.bleepingcomputer.com/news/security/you-can-hack-some-mazda-cars-with-a-usb-flash-drive/
- http://illmatics.com/carhacking.html


# Remediation Advice

Filter arbitrary commands and apply input validation to any media devices to prevent executing from the infotainment system. Make sure that the infotainment system is on a sandbox module and does not have direct interaction to the CANbus network.