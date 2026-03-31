# recommendation(s)

Reconfigure PXE deployment to disable unknown computer support. Require a PXE boot password on all task sequences and enable the "Require a password when computers use PXE" option in the distribution point properties.

Additionally, configure SCCM to use HTTPS for client communication, remove sensitive credentials from task sequences and boot images, and segment the PXE deployment network from general user VLANs. Use network access accounts with least privilege and consider migrating to Enhanced HTTP or PKI-based certificate authentication.
