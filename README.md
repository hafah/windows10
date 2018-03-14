
# Keeping your windows installation fresh.

Software Management Automation allows for often reinstalling windows. I tend to reinstall windows every couple months. I use [chocolatey](https://chocolatey.org/) to install all the programs I use in one go.

### Installation

###### Windows (PowerShell)
```powershell
# install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; 
$uri = 'https://chocolatey.org/install.ps1';
iex ((New-Object System.Net.WebClient).DownloadString("$uri"));
refreshenv;
$uri = 'https://raw.githubusercontent.com/hafah/windows10/master/install.ps1';
iex ((New-Object System.Net.WebClient).DownloadString("$uri"));
```


###### Ubuntu

```sh
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install build-essential curl dos2unix tmux wget zip vagrant fish-common nodejs 
sudo apt-get -y install git golang-go html2text python3 php php-curl python-minimal python-software-properties 
sudo apt-get -y install p7zip-full vagrant virtualbox dkms zip software-properties-common

sudo apt-add-repository -y ppa:rael-gc/rvm

sudo apt-get update 
sudo apt-get install rvm
source /etc/profile.d/rvm.sh
```

###### wsl doesn't need virtualbox for vagrant

```sh
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
sudo apt-get purge virtualbox
sudo apt-get remove virtualbox-dkms
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
