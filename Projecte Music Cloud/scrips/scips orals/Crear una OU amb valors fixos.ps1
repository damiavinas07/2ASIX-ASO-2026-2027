Import-Module ActiveDirectory

$nom = "info"
$ruta = "DC=damiamusiccloud,DC=local"

New-ADOrganizationalUnit -Name $nom -Path $ruta
