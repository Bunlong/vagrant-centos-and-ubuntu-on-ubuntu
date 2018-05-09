# Vagrant Centos/Ubuntu on Ubuntu

### Install VirtualBox

Download the latest version of deb file from [VirtualBox Linux downloads and then run](https://www.virtualbox.org/wiki/Linux_Downloads)

```
sudo apt install ./virtualbox-5.2_5.2.6-120293~Ubuntu~zesty_amd64.deb
```

Certainly by the time you run this the version and so the name of the file will change.

### Install Vagrant

Download the .deb file for Debian from [Vagrant downloads](https://www.vagrantup.com/downloads.html) and then run:

```
sudo apt install ./vagrant_2.0.2_x86_64.deb
```

### Verify the installed versions

```
$ virtualbox -h
Oracle VM VirtualBox Manager 5.2.6
...
```

```
$ vagrant -v
Vagrant 2.0.2
```
