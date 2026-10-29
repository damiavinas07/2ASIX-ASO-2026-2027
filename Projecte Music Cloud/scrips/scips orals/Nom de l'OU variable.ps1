Import-Module ActiveDirectory

$nomOU = Read-Host "Nom OU"
$domini = "DC=damiamusiccloud,DC=local"

New-ADOrganizationalUnit -Name $nomOU -Path $domini