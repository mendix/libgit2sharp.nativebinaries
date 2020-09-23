Param(
    [Parameter(Mandatory=$true)]
    [string]$version
)

nuget.exe Pack .\MendixBinaries.nuspec -Version $version -NoPackageAnalysis

