$scriptPath = Split-Path $script:MyInvocation.MyCommand.Path
$projectRoot = (get-item $scriptPath).parent.FullName

docker run --rm -v ${projectRoot}:/local swaggerapi/swagger-codegen-cli-v3:3.0.8 generate -i /local/samples/websample/IdentityWeb/wwwroot/api-docs/v1/swagger.json -l csharp -o /local/out/csharp --additional-properties packageName=IdentityApi.Client

xcopy /s /e /Y $projectRoot\out\csharp\src\IdentityApi.Client\Api\*.* $projectRoot\samples\websample\IdentityApi.Client\Api\
# xcopy /s /e /Y $projectRoot\out\csharp\src\IdentityApi.Client\Client\*.* $projectRoot\src\IdentityApi.Client\Client\

function Get-ScriptDirectory {
    Split-Path -parent $PSCommandPath
}
