Param(
    [Parameter(Mandatory=$true)]
    [string]$version
)

Remove-Item .\mx_nuget.package\runtimes\* -Recurse -Force
Copy-Item .\nuget.package\runtimes\* .\mx_nuget.package\runtimes\ -Recurse -Force

.\nuget.exe Pack mx_nuget.package\MendixBinaries.nuspec -Version $version -NoPackageAnalysis

