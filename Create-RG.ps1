
function Create-RG {
    param (
        [Parameter(Mandatory=$true,
        Position=0)]
        [string]
        $RSGName,
       

        [Parameter(Mandatory=$true,
        Position=1)]
        [String]
        $Location
    )

    try {
        Connect-AzAccount
    }
    catch {
        Write-Host "Error Connecting"
    }
    

    New-AzResourceGroup -Name $RSGName -Location $Location

    
}
#Create-RG "test-sunny" "canadaeast"