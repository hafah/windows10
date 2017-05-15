# Information
Software Management Automation allows for often reinstalling windows. I use [chocolatey](https://chocolatey.org/).

## Getting Started

open cmd with admin rights.

```
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
```


