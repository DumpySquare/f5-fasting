# DO - Declarative Onboarding

## DO extraction/conversion with ACC

- [RFE] create DO output #16
  - <https://github.com/f5devcentral/f5-as3-config-converter/issues/16>

## DO FAST Template

- [RFE] DO FAST Template #57
  - <https://github.com/F5Networks/f5-appsvcs-templates/issues/57>

- ntp
- dns
- snmp
- syslog
- banner
- system-preferences

- hostname
- device certificate
- provisioning
- licensing

## ATC best practices

- K00505373: Automation Toolchain restjavad extra memory allocation guidance
  - <https://support.f5.com/csp/article/K00505373>
- AS3 Best Practices - F5 Cloud Docs - F5 Networks
  - <https://clouddocs.f5.com/products/extensions/f5-appsvcs-extension/latest/userguide/best-practices.html>

## bigiq + ve + vmware

<https://techdocs.f5.com/en-us/bigiq-8-0-0/add-configure-big-ip-ve-in-vmware-environment/add-configure-big-ip-ve-in-vmware-environment.html#concept-1486>

<https://clouddocs.f5.com/cloud/public/v1/vmware/vmware_setup.html#set-the-big-ip-ve-management-ip-address-and-passwords>

<https://clouddocs.f5.com/training/community/big-iq-cloud-edition/html/class5/module7/module7.html>

<https://galaxy.ansible.com/f5devcentral/bigiq_create_ve>

### manual properties inject

Was able to manually open the ova as an archive and edit the .ovf file to add the propeties described here:  <https://clouddocs.f5.com/cloud/public/v1/vmware/vmware_setup.html#ova-properties-file-for-setting-management-ip-address-and-default-passwords>

## DO BIG-IQ schema

/var/config/rest/metadata/cm.global.declarative-onboarding-schema.declarativeonboardingschemastate.json
/var/config/rest/metadata/cm.global.appsvcs-schema.appsvcsschemastate.json

/cm/global/declarative-onboarding-schema
/cm/global/appsvcs-schema

/usr/share/java/rest/f5.rest.bigiq-schema.jar
/usr/share/java/rest/libs/f5.rest.mcp.schema.jar

/mgmt/shared/declarative-onboarding/info
/mgmt/shared/appsvcs/info

/usr/share/java/rest/f5.rest.bigiq-schema.jar
/usr/share/java/rest/libs/f5.rest.mcp.schema.jar

https://raw.githubusercontent.com/F5Networks/f5-declarative-onboarding/master/src/schema/latest/base.schema.json
