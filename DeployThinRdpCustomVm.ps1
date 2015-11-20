# using Azure PowerShell 1.0
Login-AzureRmAccount

$group = "thinrdpcustom"
New-AzureRmResourceGroup -Name $group -Location "West Europe"
New-AzureRmResourceGroupDeployment -ResourceGroupName $group -TemplateFile ".\ThinRdpVmCustomImage.json" -TemplateParameterFile ".\ThinRdpVmCustomImage.param.json" 


