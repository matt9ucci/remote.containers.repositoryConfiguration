param (
	[Parameter(Position = 0, Mandatory)]
	[uri]
	$UpstreamUri,

	[Parameter(Position = 1)]
	[string]
	$OriginOwner = 'matt9ucci'
)

$params = @{
	Path        = Join-Path $PSScriptRoot .. Repos $UpstreamUri.Host $UpstreamUri.AbsolutePath .devcontainer
	Destination = Join-Path $PSScriptRoot .. Repos $UpstreamUri.Host "$OriginOwner/$(Split-Path $UpstreamUri.AbsolutePath -Leaf)" .devcontainer
	Recurse     = $true
}
Copy-Item @params
