$esxi_hostname = ""  #esx name or ip where vcenter will be deployed
$esxi_username = "root"   #esx username and password of the esx
$esxi_password = "VMware123!"
$deployment_network = ""
$datastore = ""
$deployment_option = "small"  #tiny, small, large  etc
$vcenter_vm_name =  "vcenter" #vcenter VM name of the appliance


$vcenter_fqdn_system_name = "vcenter.vsphere.local"  # ip addreess 
$vcenter_ip = ""
$vcenter_prefix = 20  # subnetmask
$vcenter_gateway = ""
$vcenter_dns_servers = ""

$vcenter_ssh_password = "VMware123!"

$vcenter_sso_password = "VMware123!"
$vcenter_sso_domain_name = vsphere.local

$fliename = "create_vcenter_on_esxi.json"  # file to create
