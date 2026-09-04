set CGO_ENABLED=0
set GOOS=linux
set GOARCH=amd64
set GOMODCACHE=%~dp0..\..\..\.cache\go-mod
set GOCACHE=%~dp0..\..\..\.cache\go-build
mkdir "%GOMODCACHE%" 2>nul
mkdir "%GOCACHE%" 2>nul
go build -o build/trip-service ./services/trip-service/cmd/main.go