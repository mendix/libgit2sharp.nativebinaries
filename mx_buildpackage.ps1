Param(
    [Parameter(Mandatory=$true)]
    [string]$version
)

# we remove any contents of the runtimes folder
# we also fail silently so that if the folder does not exist it does not return a error.
# this will essentially force the folder to be deleted silently and recursively
Remove-Item .\mx_nuget.package\runtimes\* -Recurse -Force -ErrorAction SilentlyContinue

# Make the runtimes folder if it doesnt exist
mkdir .\mx_nuget.package\runtimes -Force

# copy the contents of the nuget.packages runtimes folder to the mx_nuget.package runtimes folder.
# this data is being populated by the build.libgit2.ps1 into the nuget.package folder
Copy-Item -Path .\nuget.package\runtimes\* .\mx_nuget.package\runtimes\ -Recurse -Force

# pack the package
.\nuget.exe Pack .\mx_nuget.package\MendixBinaries.nuspec -Version $version -NoPackageAnalysis

