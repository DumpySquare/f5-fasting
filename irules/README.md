

# iRule APIs

### list irules
/mgmt/tm/ltm/rule

### list system folders
/mgmt/tm/sys/folder

### starting point for browsing cm APIs
/mgmt/tm/cm

### list partitions
/mgmt/tm/auth/partition

### list access-policies
/mgmt/tm/apm/policy/access-policy


```
# setup raw create irule api
```


### test irule
```
##########################
### test irule

#https://devcentral.f5.com/s/articles/20-lines-or-less-11

when HTTP_REQUEST {
  # decode original URI.
  set tmpUri [HTTP::uri]
  set uri [URI::decode $tmpUri]

  # repeat decoding until the decoded version equals the previous value.
  while { $uri ne $tmpUri } {
    set tmpUri $uri
    set uri [URI::decode $tmpUri]
  }
  HTTP::uri $uri

  log local0. "Original URI: [HTTP::uri]"
  log local0. "Fully decoded URI: $uri"
}
```