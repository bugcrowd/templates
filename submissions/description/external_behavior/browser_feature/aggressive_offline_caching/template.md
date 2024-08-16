Browsers implement features such as service workers to offer offline features for an application. For example, a browser can offer offline features such as caching, notifications, as well as offloading computation for applications, such as Progressive Web Applications (PWA). Occasionally, these offline workers can cause issues like high CPU usage or overly aggressive offline caching, as seen in this instance. Depending on the implementation of the service worker, aggressive offline caching can act as a vector for Denial of Service (DoS) to regular application users by consuming compute to overly write to the offline cache.

#### Business Impact

This vulnerability can lead to reputational damage and indirect financial loss to the company through the impact to customers’ access to the application and its functions.

#### Steps to Reproduce

1. Use a browser to navigate to: {{URL}}
1. Use {{software}} to profile when service worker is active and compare to when the server worker is not active

#### Proof of Concept (PoC)

The screenshots below demonstrate the aggressive offline caching:

{{screenshot}}
