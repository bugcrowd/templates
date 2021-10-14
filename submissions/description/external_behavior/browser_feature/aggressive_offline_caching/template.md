# Aggressive Offline Caching

## Overview
Browsers implement features such as service workers to offer offline features for an application such as caching, notifications, and offloading computation for applications such as Progressive Web Applications (PWA), occasionally, these offline workers can cause issues such as high CPU usage or overly aggressive offline caching.

## Walkthrough & PoC

1. Navigate to the following URL: bugcrowd.com/vulnerable-endpoint

1. Use {{software}} to profile when service worker is active and compare to when the server worker is not active:

{{screenshot}}

## Vulnerability Evidence

The following image(s) show the full exploit:
{{screenshot}}

## Demonstrated Impact

Depending on the implementation of the service worker, Aggressive Offline Caching can act as a vector for Denial of Service (DoS) by consuming compute to overly write to offline cache. (Explain how)
