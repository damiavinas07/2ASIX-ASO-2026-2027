
param(
    [Parameter(Mandatory = $true)]
    [string]$Ruta,

    [Parameter(Mandatory = $true)]
    [string]$Nom
)

Import-Module ActiveDirectory

try {

    $Parts = $Ruta -split ','
    $Dominis = @($Parts | Where-Object { $_ -match '^DC=' })
    $OUs = @($Parts | Where-Object { $_ -match '^OU=' })

    $RutaActual = $Dominis -join ','

    [array]::Reverse($OUs)

    foreach ($OU in $OUs) {

        $NomOU = $OU.Substring(3)
        $RutaOU = "$OU,$RutaActual"

        $Existeix = Get-ADOrganizationalUnit -Identity $RutaOU -ErrorAction SilentlyContinue

        if (-not $Existeix) {
            New-ADOrganizationalUnit -Name $NomOU -Path $RutaActual
            Write-Host "OU creada: $NomOU"
        }

        $RutaActual = $RutaOU
    }

    $Existeix = Get-ADOrganizationalUnit -Filter "Name -eq '$Nom'" -SearchBase $Ruta -SearchScope OneLevel

    if (-not $Existeix) {
        New-ADOrganizationalUnit -Name $Nom -Path $Ruta
        Write-Host "OU creada: $Nom" -ForegroundColor Green
    }
    else {
        Write-Host "Aquesta OU ja existeix."
    }

}
catch {
    Write-Host "Error: $($_.Exception.Message)" -ForegroundColor Red
}
