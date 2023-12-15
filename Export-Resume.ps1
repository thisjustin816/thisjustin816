[CmdletBinding()]
param (
    [String]$Name = $env:USERNAME,
    [String]$FilePath = "$PSScriptRoot\README.md",
    [String]$Destination = $PSScriptRoot
)

$source = Get-Item -Path $FilePath

$outDirectory = New-Item -Path $Destination -ItemType Directory -Force

$sameWindow = @{
    NoNewWindow = $true
    Wait = $true
}
Start-Process -FilePath 'npm' -ArgumentList 'i -g md-to-pdf' @sameWindow
Start-Process -FilePath 'md-to-pdf.cmd' -ArgumentList $source.FullName @sameWindow

$pdfResume = Get-ChildItem -Path $source.Parent.FullName -Filter '*.pdf' -Recurse |
    Rename-Item -NewName "$Name-resume.pdf" -PassThru -Force

if (!( Get-ChildItem -Path $outDirectory.FullName -Filter $pdfResume.Name )) {
    Move-Item -Path $pdfResume.FullName -Destination $outDirectory.FullName -PassThru -Force
}
else {
    $pdfResume
}

$source | Copy-Item -Destination "$($outDirectory.FullName)/$Name-resume.txt" -PassThru -Force
