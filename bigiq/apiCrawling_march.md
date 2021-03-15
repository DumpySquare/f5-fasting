/mgmt/cm/adc-core



/mgmt/cm/adc-core/tasks/certificate-management


/mgmt/cm/adc-core/working-config/sys/file/ssl-key


/mgmt/cm/adc-core/working-config/file-objects


/mgmt/cm/device/tasks/device-inventory

/mgmt/shared/resolver/device-groups

/mgmt/shared/resolver/device-groups/cm-bigip-allDevices/devices

/mgmt/cm/system/machineid-resolver?filter=address eq 10.10.0.2

 <!-- use to get list of all applications and appId -->
/mgmt/cm/global/config-sets

/mgmt/cm/global/global-apps-merge-move

/mgmt/ap/query/v1/tenants/default/reports/ApplicationServicesSummary/da40d8e5-cec1-3d4d-93eb-c808cb5fc4b0

/mgmt/cm/global/application-device-resolver

### get app summary UI grouped apps (including "Unknown Applications")

/mgmt/ap/query/v1/tenants/default/reports/ApplicationsSummary
```json 
{
    "kind": "ap:compose:Report",
    "lastUpdateMicros": 869608160987,
    "result": {
        "dnsUnhandledRps": 0,
        "dnsTotalRps": 0,
        "health": {
            "Critical": 3,
            "Moderate": 0,
            "Good": 0,
            "Other": 0
        },
        "numOfAppsNotProtected": 3,
        "numOfAppsWithBadTrafficGrowth": 0,
        "numOfAppsWithBlockingValidTraffic": 0,
        "numOfAppsWithSuccessfulAttacks": 0,
        "totalApplications": 10,
        "concurrent-connections": [
            {
                "application": "Unknown Applications",
                "concurrent-connections": 0
            },
            {
                "application": "epic",
                "concurrent-connections": 0
            },
            {
                "application": "tpaaaarty",
                "concurrent-connections": 0
            }
        ],
        "http-tps": [],
        "response-time": []
    },
    "requestDurationInMillis": 184
}

/mgmt/ap/query/v1/tenants/default/reports/ApplicationsSummary/tpaaaarty