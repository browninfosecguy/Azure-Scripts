
try {
    Connect-AzAccount
}
catch {
    
}


New-AzResourceGroup -Name TestResourceGroup -Location canadacentral

$frontendSubnet = New-AzVirtualNetworkSubnetConfig -Name frontendSubnet -AddressPrefix "10.10.1.0/24"

$backendSubnet  = New-AzVirtualNetworkSubnetConfig -Name backendSubnet  -AddressPrefix "10.10.2.0/24"

New-AzVirtualNetwork -Name MyVirtualNetwork -ResourceGroupName TestResourceGroup -Location canadacentral -AddressPrefix "10.0.0.0/16" -Subnet $frontendSubnet,$backendSubnet