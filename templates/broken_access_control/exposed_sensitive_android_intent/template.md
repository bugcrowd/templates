## Description


## Reproduction Steps


## References

- https://www.owasp.org/index.php/Mobile_Top_10_2016-M1-Improper_Platform_Usage


## Remediation Advice

1. If you use an intent to bind to a Service, ensure that your app is secure by using an explicit intent. Using an implicit intent to start a service is a security risk as you can't be certain what service will respond to the intent, and the user can't see which service starts.
2. If data within a broadcast intent may be sensitive, you should consider applying a permission to make sure that malicious applications can't register to receive those messages without appropriate permissions. In these circumstances you may also consider invoking the receiver directly rather than raising a broadcast.
3. By default, receivers are exported and can be invoked by any other application. If your BroadcastReceiver is intended for use by other applications, you may want to apply security permissions to receivers using the <receiver> element within the application manifest. This prevents applications without appropriate permissions from sending an intent to the BroadcastReceiver.

