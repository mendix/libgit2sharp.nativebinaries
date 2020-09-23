Param(
    [Parameter(Mandatory=$true)]
    [string]$version
)

.\nuget.exe Pack mx_nuget.package\MendixBinaries.nuspec -Version $version -NoPackageAnalysis

