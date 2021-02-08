
# BIGIP UCS/QKVIEW API TESTING

## UCS

### how ansible does it

Ansible bigip_ucs_fetch.py
<https://github.com/F5Networks/f5-ansible/blob/devel/ansible_collections/f5networks/f5_modules/plugins/modules/bigip_ucs_fetch.py>

### more examples

<https://devcentral.f5.com/s/question/0D51T00006i7Yfu/how-can-i-call-icontrolrest-to-save-and-load-configurations-from-ucs>

tmsh save sys ucs /var/tmp/backup_${HOSTNAME}_`date +%Y%m%d-%H%M%S`.ucs

K13132: Backing up and restoring BIG-IP configuration files with a UCS archive
<https://support.f5.com/csp/article/K13132>

tmsh save sys ucs $(echo $HOSTNAME | cut -d'.' -f1)-$(date +%H%M-%m%d%y)

/mgmt/tm/util/
/mgmt/tm/sys/ucs/
/mgmt/tm/task/sys/ucs/1606317655770882

### sync api method

```js
// create the task
const x = {
    url: '/mgmt/tm/sys/ucs',
    method: 'POST',
    body: {
        command: 'save',
        name: '/var/local/ucs/test1.ucs',
        options: [
            { passphrase: 'beeen'}
        ]
    }
}
// working to get UCS sync with passphrase
const x = {
    url: '/mgmt/tm/sys',
    method: 'POST',
    body: {
        command: 'save',
        options: [
            { ucs: '/var/local/ucs/test1.ucs' },
            { passphrase: 'beeen'}
        ]
    }
}
```

### async api method

```js
// create the task
const x = {
    url: '/mgmt/tm/task/sys/ucs',
    method: 'POST',
    body: {
        command: 'save',
        name: 'test.ucs',
        options: [
            { passphrase: 'beeen'}
        ]
    }
}
// start the task
const y = {
    url: '/mgmt/tm/task/sys/ucs/1606341769456925',
    method: 'PUT',
    body: {"_taskState": "VALIDATING"}
}
// check the task for completion
// the trailing "/result" doesn't seem to be needed
const z = {
    url: '/mgmt/tm/task/sys/ucs/1606338811005507'
}
```

## bigiq way?  or just newer way???

/mgmt/tm/shared/sys/backup/example
/mgmt/tm/shared/sys/backup/a5e23ab2-cfc3-4f69-966e-30aeb237b5a8

### this seems to be the bigiq way to do it

```typescript
const x = {
    url: '/mgmt/tm/shared/sys/backup',
    method: 'POST',
    body: {
        action: 'BACKUP',
        file: '/var/local/ucs/test.ucs',
        passphrase: 'bennn'
    }
}
const x = {
    url: '/mgmt/tm/shared/sys/backup/7f8cdd83-d992-4295-bb64-9af11efc502b'
}
```

### something else

```typescript
const x = {
    url: '/mgmt/tm/shared/sys/backup',
    method: 'POST',
    body: {
        action: 'BACKUP_WITH_NO_PRIVATE_KEYS_WITH_ENCRYPTION',
        file: 'testnn.ucs',
        passphrase: 'bennn'
    }
}
const x = {
    url: '/mgmt/tm/shared/sys/backup/e1492a3b-92d6-4f41-8899-716dbf6af80f'
}
```

```js
    ucs: {
        uri: '/mgmt/shared/file-transfer/ucs-downloads/',
        path: '/var/local/ucs/'
    },
```

## qkview

nice -n 19 qkview -s0
