[CmdletBinding()]
param (
    [String]$Name = $env:USERNAME,
    [String]$FilePath = "$PSScriptRoot\README.md",
    [String]$Destination = $PSScriptRoot
)

$source = Get-Item -Path $FilePath

Start-Process -FilePath 'npm' -ArgumentList 'i -g md-to-pdf' -NoNewWindow -Wait
Start-Process -FilePath 'md-to-pdf.cmd' -ArgumentList $source.FullName -NoNewWindow -Wait

$pdfResume = Get-ChildItem -Path $source.Parent.FullName -Filter '*.pdf' -Recurse |
    Rename-Item -NewName "$Name-resume.pdf" -PassThru -Force

if (!( Get-ChildItem -Path $Destination -Filter $pdfResume.Name )) {
    Move-Item -Path $pdfResume.FullName -Destination $Destination -PassThru -Force
}
else {
    $pdfResume
}

$source | Copy-Item -Destination "$Destination\$Name-resume.txt" -PassThru -Force
