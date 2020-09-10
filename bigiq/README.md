



### test app deploy through bigiq



{
    "class": "AS3",
    "action": "deploy",
    "declaration": {
        "class": "ADC",
        "schemaVersion": "3.12.0",
        "target": {
            "address": "10.200.244.110"
        },
        "devLTM_T1App1": {
            "class": "Tenant",
            "gpApp1": {
                "class": "Application",
                "schemaOverlay": "AS3-F5-TCP-lb-template-big-iq-default-v2",
                "template": "tcp",
                "serviceMain": {
                    "pool": "Pool",
                    "enable": true,
                    "profileTCP": {
                        "use": "TCP_Profile"
                    },
                    "virtualPort": 8080,
                    "virtualAddresses": [
                        "16.5.1.1"
                    ],
                    "profileAnalyticsTcp": {
                        "use": "Analytics_TCP_Profile"
                    },
                    "class": "Service_TCP"
                },
                "Pool": {
                    "members": [
                        {
                            "adminState": "enable",
                            "servicePort": 8081,
                            "serverAddresses": [
                                "16.5.1.1"
                            ]
                        }
                    ],
                    "class": "Pool"
                },
                "TCP_Profile": {
                    "synMaxRetrans": 3,
                    "finWaitTimeout": 5,
                    "class": "TCP_Profile"
                },
                "Analytics_TCP_Profile": {
                    "collectCity": false,
                    "collectRegion": true,
                    "collectCountry": true,
                    "collectNexthop": false,
                    "collectPostCode": false,
                    "collectContinent": true,
                    "collectRemoteHostIp": false,
                    "collectedByClientSide": true,
                    "collectedByServerSide": true,
                    "collectRemoteHostSubnet": true,
                    "class": "Analytics_TCP_Profile"
                }
            }
        },
        "id": "uid2"
    }
}

### enabling rest proxy for device - post discovery

/mgmt/shared/resolver/device-groups/cm-bigip-allBigIpDevices/devices


/mgmt/shared/resolver/device-groups/cm-bigip-allBigIpDevices/devices
"uuid": "ae8742ff-efca-4f44-82a1-16fe5a61bfbc",
"hostname": "coreltm01.benlab.io",

"uuid": "0a9eb434-8371-4be2-b148-1b0ede69b3d2",
"hostname": "coreltm02.benlab.io",

---


/mgmt/shared/resolver/device-groups/cm-bigip-allBigIpDevices/devices/1932275d-7c55-4fb4-b981-8857d20ac220
"uuid": "1932275d-7c55-4fb4-b981-8857d20ac220",
"hostname": "bigip-tparty05.benlab.io",


```
url: /mgmt/shared/resolver/device-groups/cm-bigip-allBigIpDevices/devices/1932275d-7c55-4fb4-b981-8857d20ac220/
method: patch
body: {
  "properties": {
    "isRestProxyEnabled": "true"
  }
}


---


"uuid": "d4f9b652-73cf-4454-895b-c5754383db6b",
"hostname": "devCloud01.benlab.io",
```
url: /mgmt/shared/resolver/device-groups/cm-bigip-allBigIpDevices/devices/d4f9b652-73cf-4454-895b-c5754383db6b/
method: patch
body: {
  "properties": {
    "isRestProxyEnabled": "true"
  }
}
```




It seems that the important message in step 7 of post discovery enablement is not necessarily true.  The example uses the PATCH method the file it references only has the new property.  Furthermore, i think it's a bit embarrassing that bigiq doesn't provide a way to do this natively, but if we are gonna go through the trouble of a document like this to get around it, I suggest that we just provide a script to do it for our customers.  