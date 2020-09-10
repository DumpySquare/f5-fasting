

## Example POSTs to deploy FAST apps in this folder

Highlight the each json object in the vscode f5-fast extension, then `F1`, and select `F5-Fast: Deploy Fast App` to deploy the application


##  app1.mst - simple_http
```
{
  "name": "goodFastTemplates/app1",
  "parameters": {
    "tenant_name": "fastTen1",
    "application_name": "app1_http",
    "virtual_port": 80,
    "virtual_address": "10.90.0.10",
    "server_port": 8080,
    "server_addresses": [
      "10.90.0.11",
      "10.90.0.12"
    ]
  }
}
```

## app2.mst - simple_tcp
```
{
  "name": "goodFastTemplates/app2",
  "parameters": {
    "tenant_name": "fastTen1",
    "application_name": "app2_tcp",
    "virtual_port": 80,
    "virtual_address": "10.90.0.20",
    "server_addresses": [
      "10.90.0.21",
      "10.90.0.22"
    ]
  }
}
```


## app3.yml - deploys simple_udp_defaults.yml template
- deploys all defaults defined within the parameters of the template
```
{
  "name": "goodFastTemplates/app3",
  "parameters": {}
}
```

## app3.yml - deploys defaults, but same tenant as other examples

Will conflict with above deployment since the pool members will be the same, but wanted to demonstrat that all parameters that have defaults are optional and can be updated as needed

```
{
  "name": "goodFastTemplates/app3",
  "parameters": {
    "tenant_name": "fastTen1"
  }
}
```

## app4.yml - same as above, but no schema reference (types.json)

This template is able to be uploaded as a single file (right click within vscode).  

This will probably end up being the recommended path since yaml is easier to read/type and it also provides good flexibility for defining the gui.  

TO PUT THIS ANOTHER WAY, WRITE ALL FAST TEMPLATES IN YAML!!! - will document this soon!

```
{
  "name": "goodFastTemplates/app4",
  "parameters": {
    "tenant_name": "fastTen1"
  }
}
```