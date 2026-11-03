
param(
    [string]$Nom = "Administracio"
)

Import-Module ActiveDirectory

$ruta = "DC=damiamusiccloud,DC=local"

New-ADOrganizationalUnit -Name $Nom -Path $ruta
