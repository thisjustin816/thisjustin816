[CmdletBinding()]
param (
    [String]$Name = $env:USERNAME,
    [String]$FilePath = "$PSScriptRoot\README.md",
    [String]$Destination = $PSScriptRoot,
    [String]$Version = ( Get-Date -Format 'yyyyMMdd.HHmm' )
)

$source = Get-Item -Path $FilePath

$outDirectory = New-Item -Path $Destination -ItemType Directory -Force

$sameWindow = @{
    NoNewWindow = $true
    Wait = $true
}
Start-Process -FilePath 'npm' -ArgumentList 'i -g md-to-pdf' @sameWindow
Start-Process -FilePath 'md-to-pdf.cmd' -ArgumentList $source.FullName @sameWindow

$fileName = "$Name-resume_$Version"

$pdfResume = Get-ChildItem -Path $source.Parent.FullName -Filter '*.pdf' -Recurse |
    Rename-Item -NewName "$fileName.pdf" -PassThru -Force

if (!( Get-ChildItem -Path $outDirectory.FullName -Filter $pdfResume.Name )) {
    Move-Item -Path $pdfResume.FullName -Destination $outDirectory.FullName -PassThru -Force
}
else {
    $pdfResume
}

$source | Copy-Item -Destination "$($outDirectory.FullName)/$fileName.txt" -PassThru -Force
