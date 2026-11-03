
param(
    [Parameter(Mandatory = $true)]
    [string]$Nom,

    [string]$Ruta = "DC=damiamusiccloud,DC=local"
)

try {
    Import-Module ActiveDirectory -ErrorAction Stop

    if ([string]::IsNullOrWhiteSpace($Nom)) {
        throw "El nom de l'OU no pot estar buit."
    }

    if ([string]::IsNullOrWhiteSpace($Ruta)) {
        throw "La ruta no pot estar buida."
    }

    $Nom = $Nom.Trim()
    $Ruta = $Ruta.Trim()

    $Pare = Get-ADObject -Identity $Ruta -ErrorAction Stop

    if ($Pare.ObjectClass -ne "organizationalUnit" -and $Pare.ObjectClass -ne "domainDNS") {
        throw "La ruta indicada no correspon a un domini ni a una OU."
    }

    $Existeix = Get-ADOrganizationalUnit `
        -Filter "Name -eq '$Nom'" `
        -SearchBase $Ruta `
        -SearchScope OneLevel `
        -ErrorAction Stop

    if ($Existeix) {
        throw "Ja existeix una OU amb aquest nom en aquesta ubicacio."
    }

    New-ADOrganizationalUnit `
        -Name $Nom `
        -Path $Ruta `
        -ErrorAction Stop

    Write-Host "OU creada correctament: $Nom" -ForegroundColor Green
}
catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}
