# Bootstrap

Chocolatey:

```cmd
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
```

Install:

```cmd
choco install -y curl git vim
```

Setup:

```cmd
curl -k -O https://raw.githubusercontent.com/vladris/setup/master/setup.cmd
setup
```
