# Information
Software Management Automation allows for often reinstalling windows. I tend to reinstall windows every couple months. I use [chocolatey](https://chocolatey.org/). So if you've got that installed.

## Getting Started

### powershell
open powershell with admin rights.

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/hafah/choco/master/install.ps1'))
```

close cmd (or all your terminals) open a terminal and copy and paste the `install.sh` content into your terminal.

### Note
I have to install desktop.github manually since it never installs through chocolatey.
