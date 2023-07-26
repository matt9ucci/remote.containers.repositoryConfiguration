$env:DOCKER_BUILDKIT = 1
git clone https://github.com/docker/cli --depth 1 $PSScriptRoot\cli
Push-Location $PSScriptRoot\cli
docker build -t docker-cli-dev:local -f $PSScriptRoot\cli\dockerfiles\Dockerfile.dev .
Pop-Location
