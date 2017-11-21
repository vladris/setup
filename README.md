# Bootstrap

```cmd
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco install -y curl git vim googlechrome far conemu
refreshenv
curl -k -O https://raw.githubusercontent.com/vladris/setup/master/setup.cmd
setup
```
