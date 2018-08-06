
# I don't want to click NEXT

I tend to reinstall windows every month with the help of [chocolatey](https://chocolatey.org/).

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
Import-Module BitsTransfer;
$uri = 'https://raw.githubusercontent.com/hafah/windows10/master/capstoctrl.reg';
Start-BitsTransfer -Source $uri;
regedit -s ./capstoctrl.reg;
```


###### Ubuntu

```sh
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install build-essential composer curl dos2unix tree tmux wget zip vagrant fish-common nodejs silversearcher-ag 
sudo apt-get -y install git golang-go html2text python3 php php-curl php-mbstring python-minimal python-software-properties 
sudo apt-get -y install p7zip-full vagrant virtualbox dkms zip software-properties-common rvm exuberant-ctags fdclone
source /etc/profile.d/rvm.sh

rvm install 2.3.1
sudo gem install tmuxodoro
sudo gem install tmuxinator

sudo apt-get -y install php php-pear
sudo apt-get -y install php7.0-dev
pecl install xdebug
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
