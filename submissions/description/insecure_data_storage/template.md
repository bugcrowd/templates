Insecure data storage can occur in both the client and server sides of an application. When data from the application is stored insecurely it is susceptible to being identified and used maliciously. An attacker with access to the insecurely stored data of this application can leverage the data to gather further information on users and the application, and use it to perform further attacks.

**Business Impact**

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ trust.

**Steps to Reproduce**

1. Log in to the application and input data so that it is stored by the application
1. Navigate to where the application stores the gathered information
1. Navigate to the following URL: {{URL}}
1. Observe the application data that is stored unencrypted

**Proof of Concept (PoC)**

The screenshot(s) below demonstrate(s) the vulnerability:
>
> {{screenshot}}
