

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
highlight -> right-click -> Make HTTP Request
```
ltm rule /Common/A_testRedirect_rule2 {
### default 80->443 redirect irule for testing

when HTTP_REQUEST {
    HTTP::redirect https://[getfield [HTTP::host] ":" 1][HTTP::uri]
}
}
```

### get irule
/mgmt/tm/ltm/rule
/mgmt/tm/ltm/rule/~Common~A_testRedirect_rule

### delete irule
url: /mgmt/tm/ltm/rule/~Common~A_testRedirect_rule
method: DELETE


### create irule
url: /mgmt/tm/ltm/rule
method: DELETE