# Keeping your windows installation fresh.

Software Management Automation allows for often reinstalling windows. I tend to reinstall windows every couple months. I use [chocolatey](https://chocolatey.org/) to install all the programs I use in one go.

### Installation

###### Windows (PowerShell)

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force;
$uri = 'https://raw.githubusercontent.com/hafah/windows10/master/install.ps1'
iex (
    (New-Object System.Net.WebClient)
    .DownloadString($uri)
)
```

###### Unix

```sh
```
### and know?

###### list

`choco upgrade all --noop`


###### upgrade

`choco upgrade all`

###### remove

`choco uninstall [packagename]`


### Note
I have to install desktop.github manually since it never installs through chocolatey.
