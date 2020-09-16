Param(
    [Parameter(Mandatory=$true)]
    [string]$version
)

Copy-Item -Recurse -Force -Path ".\nuget.package\runtimes\*" -Destination ".\mx_nuget.package\runtimes\" 

.\nuget.exe Pack mx_nuget.package\MendixBinaries.nuspec -Version $version -NoPackageAnalysis

