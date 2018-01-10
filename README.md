# Keeping your windows installation fresh.

Software Management Automation allows for often reinstalling windows. I tend to reinstall windows every couple months. I use [chocolatey](https://chocolatey.org/) to install all the programs I use in one go.

### Installation

###### Windows (PowerShell)
```powershell
# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; 
$uri = 'https://chocolatey.org/install.ps1'
iex (
    (New-Object System.Net.WebClient)
    .DownloadString("$uri")
)

```
```powershell
# install list of programs
Set-ExecutionPolicy Bypass -Scope Process -Force;
$uri = 'https://raw.githubusercontent.com/hafah/windows10/master/install.ps1'
iex (
    (New-Object System.Net.WebClient)
    .DownloadString("$uri")
)
```


###### Unix

```sh
```

### Basic chocolatey commands

###### list

`choco list -lo`


###### upgrade

`choco upgrade all`

###### uninstall

`choco uninstall [packagename]`

### Further Reading

* [Chocolatey installation manual.](https://chocolatey.org/install)
* [List of other programs.](https://chocolatey.org/packages)
* [Chocolatey Documentation](https://chocolatey.org/docs)

### Note
I have to install desktop.github manually since it never installs through chocolatey.
