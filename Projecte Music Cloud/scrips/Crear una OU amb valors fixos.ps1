Import-Module ActiveDirectory

$nomOU = "Musiccloud"
$domini = "DC=damiamusiccloud,DC=local"

New-ADOrganizationalUnit -Name $nomOU -Path $domini