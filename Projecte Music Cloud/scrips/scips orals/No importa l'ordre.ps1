
param(
    [string]$Nom = "Artistas",
    [string]$Ruta = "DC=damiamusiccloud,DC=local"
)

Import-Module ActiveDirectory

New-ADOrganizationalUnit -Name $Nom -Path $Ruta
