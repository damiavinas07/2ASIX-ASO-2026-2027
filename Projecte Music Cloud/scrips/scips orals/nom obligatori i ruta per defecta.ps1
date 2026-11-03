
param(
    [Parameter(Mandatory = $true)]
    [string]$Nom,

    [string]$Ruta = "DC=damiamusiccloud,DC=local"
)

Import-Module ActiveDirectory

New-ADOrganizationalUnit -Name $Nom -Path $Ruta
