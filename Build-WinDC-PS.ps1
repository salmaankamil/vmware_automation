# Variables
$domainName = "damudi.local"  # domain name
$netBIOSName = "damudi"
$safeModePassword = (ConvertTo-SecureString "VMware123!" -AsPlainText -Force)  # Replace with a strong password
$newComputerName = "damudi-ad" # DC hostname

Rename-Computer -NewName $newComputerName -Force   # rename hostname of DC

# Install Active Directory Domain Services and DNS Server roles
Install-WindowsFeature -Name AD-Domain-Services, DNS -IncludeManagementTools

# Import the ADDSDeployment module
Import-Module ADDSDeployment

# Create a new forest
Install-ADDSForest `
    -DomainName $domainName `
    -DomainNetbiosName $netBIOSName `
    -SafeModeAdministratorPassword $safeModePassword `
    -InstallDNS `
    -Force

# After running this script, the server will reboot automatically.
