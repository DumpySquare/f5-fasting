
# document for exploring BIG-IP Next API with vscode-f5 extension

## NEXT-CM Auth Token

Explore auth token

```json
{
    "url": "/api/login",
    "method": "POST",
    "data": {
        "username": "todai",
        "password": "dobgispet"
    }
}
```

## Discovery flow

### discover next instance

```json
{
    "url": "/api/device/v1/inventory",
    "method": "POST",
    "data": {
        "address": "10.1.1.7",
        "port": 5443,
        "device_user": "admin",
        "device_password": "whos-clues",
        "management_user": "admin-cm",
        "management_password": "blues-clues"
    }
}
```

### check discover job

/api/device/v1/discovery-tasks/1e92b6c8-5060-49dd-be25-c7f64e7d10b1

### list next instances managed by CM

/api/device/v1/inventory

/api/device/v1/inventory?filter=address eq '10.1.1.7'

## NEXT-CM api

/openapi    // 550 lines

### /api

// 37130 lines
/api/openapi

// 550 lines
/api/v1/openapi
/api/change-password
/api/forgot-password
/api/login
/api/logout
/api/rotate-jwt-key
/api/token-refresh

### /api/system/

/api/system/openapi
/api/system/v1/info
/api/system/v1/version

/api/system/v1/files

### /api/ado-queiry

/api/ado-query/openapi

### /api/device/

/api/device/openapi
/api/device/v1/discovery-tasks

### /api/proxy/

/api/proxy/openapi     //???
/v1/proxy-file-upload/{id}
/v1/proxy/{id}

### /api/irule/

/api/irule/openapi
/api/irule/v1/irules

#### 403 - forbidden

/api/v1/health/ready
/api/v1/systems
/api/v1/license/report

## General NEXT (not CM) APIs

/api/v1/login
/api/v1/openapi
/api/v1/systems
/api/v1/services
/api/v1/files
/api/v1/health
/api/v1/applications

## AS3 endpoints

/mgmt/shared/appsvcs/info
/mgmt/shared/appsvcs/declare
/mgmt/shared/appsvcs/task

## FAST endpoints

/mgmt/shared/fast/info
/mgmt/shared/fast/applications
/mgmt/shared/fast/tasks
/mgmt/shared/fast/templates
