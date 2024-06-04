$esxi_hostname = " "  #esx name or ip where vcenter will be deployed
$esxi_username = "root"   #esx username and password of the esx
$esxi_password = "VMware123!"
$deployment_network = "GS Labs Network"
$datastore = "datastore1"
$deployment_option = "tiny"  #tiny, small, large  etc
$vcenter_vm_name =  "vcenter" #vcenter VM name of the appliance


$vcenter_fqdn_system_name = "vcenter.vsphere.local"  # ip addreess 
$vcenter_ip = "10.131.232.120"
$vcenter_prefix = 20  # subnetmask
$vcenter_gateway = "10.131.239.254"
$vcenter_dns_servers = "10.131.232.119"

$vcenter_ssh_password = "VMware123!"

$vcenter_sso_password = "VMware123!"
$vcenter_sso_domain_name = "vsphere.local"

$fliename = "create_vcenter_on_esxi.json"  # file to create
