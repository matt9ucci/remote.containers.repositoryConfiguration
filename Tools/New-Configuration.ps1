param (
	[Parameter(Mandatory)]
	[uri]
	$Uri
)

New-Item ($dir = Join-Path $PSScriptRoot .. Repos $Uri.Host $Uri.AbsolutePath .devcontainer) -ItemType Directory -Force

Set-Content (Join-Path $dir devcontainer.json) @'
{
	"build": {
		"dockerfile": "Dockerfile",
	},
	// Reference: https://code.visualstudio.com/docs/remote/devcontainerjson-reference
}
'@ -Force

Set-Content (Join-Path $dir Dockerfile) @'
FROM
# Reference: https://docs.docker.com/engine/reference/builder/
# Best practices https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
'@ -Force
