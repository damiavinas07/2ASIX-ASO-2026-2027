Import-Module ActiveDirectory

$nomOU = Read-Host "Nom OU"
$ruta = Read-Host "Ruta OU"

New-ADOrganizationalUnit -Name $nomOU -Path $ruta