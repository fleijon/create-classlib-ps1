$projectName  = $args[0]
$relativePath = $args[1]
$sourceFolder = ".\src\"
$testsFolder  = ".\tests\"
$unitExt      = ".Tests.Unit"
$projExt      = ".csproj"
$testName     = "projectName$unitExt"
$testOutput   = "$testsFolder$relativePath$testName\"
$srcOutput    = "$sourceFolder$relativePath$projectName\"

dotnet new classlib -n $projectName -o $srcOutput
dotnet new xunit -n $testName -o $testOutput

dotnet sln add $testOutput$testName$projExt
dotnet sln add $srcOutput$projectName$projExt
