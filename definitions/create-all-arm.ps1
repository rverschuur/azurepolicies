$ErrorActionPreference = "Stop"

$arm = Get-Content "./template-in.json" | ConvertFrom-Json
$templateNames = Get-ChildItem ./ -Directory | Select-Object -ExpandProperty name

foreach ($templateName in $templateNames) {
    $template = Get-Content "./$templateName/template.json" | ConvertFrom-Json
    $arm.resources += $template.resources
}

$arm | ConvertTo-Json -Depth 100 | Out-File "./template-all.json"

