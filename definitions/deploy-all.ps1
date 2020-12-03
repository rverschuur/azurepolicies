./create-arm.ps1

New-AzSubscriptionDeployment `
    -Name "deploy-policy-definitions" `
    -TemplateFile "./template-all.json" `
    -TemplateParameterFile "./template-parameters-all.json" `
    -Location WestEurope

