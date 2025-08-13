# recommendation(s)

Disable LLMNR and NBT-NS protocols across the network.

To disable LLMNR, the Group Policy Object (GPO) “Turn off multicast name resolution” should be set to ‘Enabled’ and applied to all domain-joined devices. 

NBT-NS can be disabled on a network adaptor of a machine by navigating to Network Connections > Network Adapter Properties > TCP/IPv4 Properties > Advanced tab > WINS tab and selecting “Disable NetBIOS over TCP/IP”. 

Whilst there is no GPO to disable NBT-NS across the domain, as a workaround, the following PowerShell script can be added to Group Policy under the path: Computer Configuration > Policies > Windows Settings > Scripts > Startup > PowerShell:

```

Scripts.$regkey = “HKLM:SYSTEM\CurrentControlSet\services\NetBT\Parameters\Interfaces”
Get-ChildItem $regkey |foreach { Set-ItemProperty -Path “$regkey\$($_.pschildname)” -Name NetbiosOptions -Value 2 -Verbose}
```
