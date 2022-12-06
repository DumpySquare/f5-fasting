# NEXT Schema Validation

## Synopsys

F5 Automation Tool Chain (AS3/DO/TS/CF) extensions are a declarative REST API that provides a more simple way to deploy configurations to F5 TMOS based products.

Each tool/extension has a single declare endpoint to declare it's specific configurations.  That endpoint had a single schema with class types.  At this point, we have a 1:1 mapping of schema to api endpoint, which we have been able to map or reference in vscode to provide schema validation

## Solutions

### 1. Wrap data body with url

```json
{
    "url": "/api/device/v1/inventory",
    "method": "PUT",
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

### 2. Inject Class details to map back to OpenApi path

> the class value is a combination of the schema name and endpoint

```json
{
    "class": "device_inventory-/api/device/v1/inventory",
    "address": "10.1.1.7",
    "port": 5443,
    "device_user": "admin",
    "device_password": "whos-clues",
    "management_user": "admin-cm",
    "management_password": "blues-clues"
}
```
