




# iApp APIs

### list application options
/mgmt/tm/sys/application

### list deployed iApp applications
/mgmt/tm/sys/application/service

### list iapp templates
/mgmt/tm/sys/application/template



>When trying to create or update an instance of an iApp via REST, you will get error messages in the HTTP response if your POST is unsuccessful.  In addition to the HTTP payload in the response, the following debug steps can be helpful:
`modify sys scriptd log-level debug`
https://devcentral.f5.com/s/articles/full-examples-of-icr-for-device-and-application-deployments



/mgmt/tm/sys/application/template/~Common~tparty_v0.1?expandSubcollections=true

/mgmt/tm/sys/application/template/~Common~tparty_v0.1/actions
/mgmt/tm/sys/application/template/~Common~tparty_v0.1/actions/definition

https://devcentral.f5.com/s/articles/managing-iapp-template-files-with-icontrol
https://devcentral.f5.com/s/articles/full-examples-of-icr-for-device-and-application-deployments

https://techdocs.f5.com/kb/en-us/products/big-ip_ltm/manuals/product/bigip-iapps-developer-11-4-0/2.html

https://clouddocs.f5.com/api/iapps/
https://devcentral.f5.com/s/question/0D51T00006i7QWZSA2/deploy-an-application-service-from-an-iapp-template-via-tmsh



### redeploy existing iApp-App
*** This is for schenarios where the template has been updated and the app needs to be re-deployed to get the template changes applied to the running app ***
```
{
    "url": "/mgmt/tm/sys/application/service/~Common~tstApp.app~tstApp",
    "method": "PATCH",
    "body": {
        "execute-action": "definition"
    }
}
```


### DELETE existing iApp-App
```
{
    "url": "/mgmt/tm/sys/application/service/~Common~tstApp.app~tstApp",
    "method": "DELETE"
}
```

### create an iapp template API

/mgmt/tm/sys/application/template/~Common~f5.ip_forwarding
/mgmt/tm/sys/application/template/~Common~f5.ip_forwarding?expandSubcollections=true
/mgmt/tm/sys/application/template?expandSubcollections=true
/mgmt/tm/sys/application/custom-stat
/mgmt/tm/sys/application/apl-script
/mgmt/tm/sys/application/template/~Common~f5.ip_forwarding/actions/definition?expandSubcollections=true
/mgmt/tm/sys/application/template/~Common~A_test1/actions/definition?expandSubcollections=true

```
{
    "url": "/mgmt/tm/sys/application/template?expandSubcollections=true",
    "method": "POST",
    "body": {
        "actions": [
            {
            "htmlHelp": "-- insert html help text --",
            "implementation": "### insert tmsh script ###",
            "name": "definition",
            "presentation": "### insert presentations stuff ###",
            "roleAcl": [
                "admin",
                "manager",
                "resource-admin"
            ]
            }
        ],
        "ignoreVerification": "false",
        "name": "A_test_up5",
        "partition": "Common",
        "requiresBigipVersionMin": "11.6.0",
        "totalSigningStatus": "not-all-signed",
        "requiresModules": [
        ]
    }
}
```
```
{
    "url": "/mgmt/tm/sys/application/template/",
    "method": "POST",
    "body": {
        "actions": [
            {
            "htmlHelp": "-- insert html help text --",
            "implementation": "### insert tmsh script ###",
            "name": "definition",
            "presentation": "### insert presentations stuff ###",
            "roleAcl": [
                "admin",
                "manager",
                "resource-admin"
            ]
            }
        ],
        "ignoreVerification": "false",
        "fullPath": "/Common/A_test_up1",
        "requiresBigipVersionMin": "11.6.0",
        "totalSigningStatus": "not-all-signed"
    }
}
```


### raw output from -> tmsh create sys application template test1
```
create template test1 {
    actions replace-all-with {
        definition {
            html-help {
                <!-- insert html help text -->
            }
            implementation {
                # insert tmsh script
            }
            macro {
            }
            presentation {
                # insert apl script
            }
        }
    }
    description none
    requires-bigip-version-max none
    requires-bigip-version-min none
    requires-modules none
}
```

### output of -> tmsh list sys application template test1
```
sys application template test1 {
    actions {
        definition {
            html-help {
                <!-- insert html help text -->
            }
            implementation {
                # insert tmsh script
            }
            macro {
            }
            presentation {
                # insert apl script
            }
            role-acl none
            run-as none
        }
    }
    description none
    ignore-verification false
    partition Common
    prerequisite-errors none
    requires-bigip-version-max none
    requires-bigip-version-min none
    requires-modules none
    signing-key none
    tmpl-checksum none
    tmpl-signature none
    total-signing-status not-all-signed
    verification-status none
}
```