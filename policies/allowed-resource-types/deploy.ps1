if ((Get-AzContext) -eq $null) {
    Connect-AzAccount
}

# VS-MPN-Robin-Verschuur   c1c001aa-df57-4e69-8221-81433c14bf7e
# Isah-devtest             2814a84d-decf-403f-8b68-94cad89c4523
Set-AzContext 2814a84d-decf-403f-8b68-94cad89c4523

New-AzSubscriptionDeployment `
    -Name "deploy-allowed-resource-types" `
    -TemplateFile "./template" `
    -TemplateParameterFile "./policies-parameters.json" `
    -Location WestEurope

