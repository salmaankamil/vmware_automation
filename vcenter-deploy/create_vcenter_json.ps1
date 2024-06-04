.\variables.ps1


$vcenter_json = @"
{
    "__version": "2.13.0",
    "__comments": "Sample template to deploy a vCenter Server Appliance with an embedded Platform Services Controller on an ESXi host.",
    "new_vcsa": {
        "esxi": {
            "hostname": "$esxi_hostname",
            "username": "$esxi_username",
            "password": "$esxi_password",
            "deployment_network": "$deployment_network",
            "datastore": "$datastore"
        },
        "appliance": {
            "__comments": [
                "You must provide the 'deployment_option' key with a value, which will affect the vCenter Server Appliance's configuration parameters, such as the vCenter Server Appliance's number of vCPUs, the memory size, the storage size, and the maximum numbers of ESXi hosts and VMs which can be managed. For a list of acceptable values, run the supported deployment sizes help, i.e. vcsa-deploy --supported-deployment-sizes"
            ],
            "thin_disk_mode": true,
            "deployment_option": "$deployment_option",
            "name": "$vcenter_vm_name"
        },
        "network": {
            "ip_family": "ipv4",
            "mode": "static",
            "system_name": "$vcenter_fqdn_system_name",
            "ip": "vcenter_ip",
            "prefix": "$vcenter_prefix",
            "gateway": "$vcenter_gateway",
            "dns_servers": [
                "$vcenter_dns_servers"
            ]
        },
        "os": {
            "password": "$vcenter_ssh_password",
            "ssh_enable": true
        },
        "sso": {
            "password": "$vcenter_sso_password",
            "domain_name": "vsphere.local"
        }
    },
    "ceip": {
        "description": {
            "__comments": [
                "++++VMware Customer Experience Improvement Program (CEIP)++++",
                "VMware's Customer Experience Improvement Program (CEIP) ",
                "provides VMware with information that enables VMware to ",
                "improve its products and services, to fix problems, ",
                "and to advise you on how best to deploy and use our ",
                "products. As part of CEIP, VMware collects technical ",
                "information about your organization's use of VMware ",
                "products and services on a regular basis in association ",
                "with your organization's VMware license key(s). This ",
                "information does not personally identify any individual. ",
                "",
                "Additional information regarding the data collected ",
                "through CEIP and the purposes for which it is used by ",
                "VMware is set forth in the Trust & Assurance Center at ",
                "http://www.vmware.com/trustvmware/ceip.html . If you ",
                "prefer not to participate in VMware's CEIP for this ",
                "product, you should disable CEIP by setting ",
                "'ceip_enabled': false. You may join or leave VMware's ",
                "CEIP for this product at any time. Please confirm your ",
                "acknowledgement by passing in the parameter ",
                "--acknowledge-ceip in the command line.",
                "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
            ]
        },
        "settings": {
            "ceip_enabled": false
        }
    }
}

"@

# Define the output file path

$filelocation =  Get-Location


# Write the modified JSON string to the file
$vcenter_json | Out-File -FilePath $filelocation\$fliename -Encoding UTF8


