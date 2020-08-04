
# Make HTTP/S Request documentation and examples

This function provides the necessary flexbility to make any API call to ANYthing

Highlight text, right-click, select: `Make HTTPS Request`


## Calls without "http" in uri/url
This assumes the request is intented for the currently connected device, of which host details are already known.

### simple uri as string
```
/mgmt/tm/sys/clock
```

### simple uri in yaml format
```
uri: /mgmt/tm/sys/clock
```

### simple uri in json format
```
{
  "uri": "/mgmt/tm/sys/clock"
}
```

### uri post in yaml
```
uri: /mgmt/shared/authn/login
method: POST
body:
    username: user1
    password: dobgispet
```

### uri post in json
```
{
  "uri": "/mgmt/shared/authn/login",
  "method": "POST",
  "body": {
      "username": "todai",
      "password": "dobgispet"
  }
}
```

---

## Calls for outside f5

The command will detect if the uri has "http", if found, it considers it a fully qualified request destined for something outside of a device defined within the extension

Default HTTP method = GET

data, or body, must also include 'POST' HTTP method

### Simple get
```
https://api.chucknorris.io/jokes/random
```

### simple get in yaml
```
uri: https://api.chucknorris.io/jokes/random
```

### simple POST in yaml
```
uri: https://postman-echo.com/post
method: POST
data: 'hi'
```

### simple POST in json
```
{
    "uri": "https://postman-echo.com/post",
    "method": "POST",
    "data": "hi"
}
```





