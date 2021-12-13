[CMdletBinding()]
param (
    [String]$Name,
    [String]$Source = "$PSScriptRoot\README.md",
    [String]$Destination = $PSScriptRoot
)

if (!( Test-Path -Path $Destination -ErrorAction SilentlyContinue )) {
    New-Item -Path $Destination -ItemType Directory -Force
}
else {
    Get-ChildItem -Path $Destination |
        Where-Object -FilterScript { $_.Name -match '.*-resume\.(pdf|txt)' } |
        Remove-Item -Force
}

Start-Process -FilePath 'npm' -ArgumentList 'i -g md-to-pdf' -NoNewWindow -Wait
Start-Process -FilePath 'md-to-pdf' -ArgumentList $Source -NoNewWindow -Wait

$pdfResume = Get-ChildItem -Path $PSScriptRoot -Filter '*.pdf' -Recurse |
    Rename-Item -NewName "$Name-resume.pdf" -PassThru -Force

if (!( Get-ChildItem -Path $Destination -Filter $pdfResume.Name )) {
    Move-Item -Path $pdfResume.FullName -Destination $Destination -PassThru -Force
}

Get-Item -Path $Source | Copy-Item -Destination "$Destination\$Name-resume.txt" -PassThru -Force
