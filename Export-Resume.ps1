[CmdletBinding()]
param (
    [String]$Name = $env:USERNAME,
    [String[]]$FilePath = ("$PSScriptRoot\README.md", "$PSScriptRoot\SINGLEPAGE.md"),
    [String]$Destination = $PSScriptRoot,
    [String]$Version = ( Get-Date -Format 'yyyyMMdd.HHmm' )
)

$source = @( Get-Item -Path $FilePath )
$outDirectory = New-Item -Path $Destination -ItemType Directory -Force
Remove-Item -Path "$($outDirectory.FullName)/$Name-resume*" -Force -ErrorAction SilentlyContinue

$sameWindow = @{
    NoNewWindow = $true
    Wait = $true
}
if (!( Get-Command -Name 'md-to-pdf.cmd' -ErrorAction SilentlyContinue )) {
    Start-Process `
        -FilePath 'npm' `
        -ArgumentList 'i -g md-to-pdf' `
        @sameWindow
}

foreach ($file in $source) {
    $fileName = if ($file.Name -match 'readme') {
        "$Name-resume-complete_$Version"
    }
    else {
        "$Name-resume_$Version"
    }

    Start-Process `
        -FilePath 'md-to-pdf.cmd' `
        -ArgumentList @(
            '--config-file', 'readme-config.json',
            $file.FullName
        ) `
        @sameWindow
    
    $pdfResume = Get-Item -Path $file.FullName.Replace('.md', '.pdf') |
        Rename-Item -NewName "$fileName.pdf" -PassThru -Force
    
    if (!( Get-ChildItem -Path $outDirectory.FullName -Filter $pdfResume.Name )) {
        Move-Item -Path $pdfResume.FullName -Destination $outDirectory.FullName -PassThru -Force
    }
    else {
        $pdfResume
    }

    $file | Copy-Item -Destination "$($outDirectory.FullName)/$fileName.txt" -PassThru -Force
}
