
# Make HTTP/S Request documentation and examples

This function provides the necessary flexbility to make any API call to ANYthing

Highlight text, right-click, select: `Make HTTPS Request`

## links

- [TO MAIN vscode-f5-fast REPO](https://github.com/DumpySquare/vscode-f5-fast)

## Calls without "http" in url

This assumes the request is intented for the currently connected device, of which host details are already known.

K13225405: Common iControl REST API command examples

- <https://support.f5.com/csp/article/K13225405>

How to use postman api for external tests like post

- <https://docs.postman-echo.com/?version=latest>

<https://www.npmjs.com/package/axios>

### simple url as string

```yaml
/mgmt/tm/sys/clock
```

### simple url in yaml format

```yaml
url: /mgmt/tm/sys/clock
```

### simple url in json format

```json
{
  "url": "/mgmt/tm/sys/clock"
}
```

### list vlans

```yaml
/mgmt/tm/net/vlan/
```

### list nodes

```json
/mgmt/tm/ltm/node
```

/mgmt/tm/sys/service/stats

/mgmt/tm/sys/service/restnoded/stats

### url post in yaml

```yaml
url: /mgmt/shared/authn/login
method: POST
body:
    username: user1
    password: dobgispet

```

### url post in yaml

```yaml
url: /mgmt/tm/sys/config
method: POST
body:
    command: save
```

### list sys options

```yaml
/mgmt/tm/sys/
```

### list sys ucs

```yaml
/mgmt/tm/sys/ucs/
```

### url post in json

```json
{
    "url": "/mgmt/shared/authn/login",
    "method": "POST",
    "body": {
        "username": "todai",
        "password": "dobgispet"
    }
}
```

### tmsh save sys config (all partitions)

><POST> /mgmt/tm/sys/config  -d '{"command":"save","partition":"all"}'

```yaml
url: /mgmt/tm/sys/config
method: POST
body:
  command: save
```

---

## Calls for outside f5

The command will detect if the url has "http", if found, it considers it a fully qualified request destined for something outside of a device defined within the extension

This is based off of NodeJS AXIOS request
https://www.npmjs.com/package/axios#request-config

Default HTTP method = GET

data, or body, must also include 'POST' HTTP method

### Simple get

```yaml
https://api.chucknorris.io/jokes/random
```

### simple get in yaml

```yaml
url: https://api.chucknorris.io/jokes/random
```

### simple get in yaml - shows broken destination

```yaml
url: https://broken.extra.io/whah
```

### simple POST in yaml

```yaml
url: 'https://postman-echo.com/post'
method: POST
data:
  hi: yo
```

### simple POST in json

```json
{
    "url": "https://postman-echo.com/post",
    "method": "POST",
    "data": {
        "hi": "yo"
    }
}
```

### raw get to external F5 using basic auth - DEV

```json
{
  "url": "https://192.168.200.131/mgmt/tm/sys/ntp",
  "auth": {
      "username": "admin",
      "password": "yayPassword!",
      "sendImmediately": "true"
  }
}
```

### get f5 auth token

```json
{
  "url": "https://192.168.200.131:443/mgmt/shared/authn/login",
  "method": "POST",
  "rejectUnauthorized": "false",
  "data": {
    "username":"admin",
    "password":"benrocks",
    "loginProviderName": "tmos"
  }
}
```

### get all tokens

I think we need to make sure all the request options are getting merged with defaults appropriately

```json
{
    "url": "https://192.168.200.131:443/mgmt/shared/authz/tokens/",
    "rejectUnauthorized": "false",
    "headers": {
        "Content-Type": "application/json",
        "X-F5-Auth-Token": "E4IYTVO27Z7MOCG66RJTD7ZHNQ"
    }
}
```

### get nodes

```json
{
    "url": "https://192.168.200.131:443/mgmt/tm/ltm/node",
    "rejectUnauthorized": "false",
    "headers": {
        "Content-Type": "application/json",
        "X-F5-Auth-Token": "DBZX3AKXJFBBZBNPG7RC6QS6MD"
    }
}
```

"validateStatus": "true",
