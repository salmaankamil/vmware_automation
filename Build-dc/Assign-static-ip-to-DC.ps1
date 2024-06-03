# Variables
$interfaceAlias = "Ethernet0"  # Replace with the name of your network adapter
$ipAddress = "10.131.232.119"  # Replace with the desired static IP address
$prefixLength = 20            # Replace with the subnet prefix length (e.g., 24 for 255.255.255.0)
$defaultGateway = "10.131.239.254"  # Replace with the desired default gateway
$dnsServers = "10.132.7.33"  # Replace with your DNS server addresses

# Remove any existing IP addresses on the interface
Get-NetIPAddress -InterfaceAlias $interfaceAlias -AddressFamily IPv4 | Remove-NetIPAddress -Confirm:$false

Remove-NetRoute -DestinationPrefix 0.0.0.0/0 -Confirm:$false 

# Assign the new static IP address
New-NetIPAddress -InterfaceAlias $interfaceAlias -IPAddress $ipAddress -PrefixLength $prefixLength -DefaultGateway $defaultGateway

# Set the DNS server addresses
Set-DnsClientServerAddress -InterfaceAlias $interfaceAlias -ServerAddresses $dnsServers

# Display the new network configuration
Get-NetIPAddress -InterfaceAlias $interfaceAlias
Get-DnsClientServerAddress -InterfaceAlias $interfaceAlias
