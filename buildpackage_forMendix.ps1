Param(
    [Parameter(Mandatory=$true)]
    [string]$version
)

Copy-Item .\nuget.package\runtimes\* .\mx_nuget.package\runtimes\ -Recurse -Force

.\nuget.exe Pack mx_nuget.package\MendixBinaries.nuspec -Version $version -NoPackageAnalysis

