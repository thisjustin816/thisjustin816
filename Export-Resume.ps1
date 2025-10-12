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

if (!(Get-Command -Name 'npx' -ErrorAction SilentlyContinue)) {
    throw 'npx is not installed or not in PATH. Please install Node.js with npm.'
}

foreach ($file in $source) {
    $fileName = if ($file.Name -match 'readme') {
        "$Name-resume-complete_$Version"
    }
    else {
        "$Name-resume_$Version"
    }

    Write-Verbose "Converting $($file.Name) to PDF..."
    $configPath = Join-Path $PSScriptRoot 'readme-config.json'
    if (-not ( Test-Path $configPath )) {
        throw "Configuration file not found: $configPath"
    }

    Write-Verbose "Using config file: $configPath"
    $result = npx md-to-pdf --config-file $configPath $file.FullName 2>&1

    if ($LASTEXITCODE -ne 0) {
        throw "md-to-pdf failed: $result"
    }

    $pdfResume = Get-Item -Path $file.FullName.Replace('.md', '.pdf') |
        Rename-Item -NewName "$fileName.pdf" -PassThru -Force

    if (-not ( Get-ChildItem -Path $outDirectory.FullName -Filter $pdfResume.Name )) {
        Move-Item -Path $pdfResume.FullName -Destination $outDirectory.FullName -PassThru -Force
    }
    else {
        $pdfResume
    }

    $file | Copy-Item -Destination "$($outDirectory.FullName)/$fileName.txt" -PassThru -Force
}
