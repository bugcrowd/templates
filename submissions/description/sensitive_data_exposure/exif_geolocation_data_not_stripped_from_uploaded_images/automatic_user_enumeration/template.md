# Automatic User Enumeration from EXIF Geolocation Data on Uploaded Images

## Overview of the Vulnerability

Exchangeable Image File Format (EXIF) data is a standard used to specify the format of metadata in photographs. Most EXIF data contains the make, model and type of camera used, the lens settings, as well as the geolocation data. This application does not remove the EXIF data when a user uploads photographs, which could be used by an attacker to find and collect the geolocation data of users. Additionally, software can be used to automatically extract the EXIF geolocation data from multiple uploaded images, which can be used to automatically enumerate users.

## Business Impact

When an application fails to remove the EXIF data from uploaded images, it breaks the user’s trust in the application and can result in reputational damage to the business. This impact is amplified by the speed of which an attacker is able to enumerate geolocation data of users on the platform.

## Steps to Reproduce

1. Use a browser to navigate to: {{url}}
1. Download the user uploaded image
1. Use the following software/script to automatically extract the EXIF geolocation data for multiple users:

{{Software}}

## Proof of Concept (PoC)

The following screenshot shows the EXIF Geolocation Data:

{{screenshot}}
