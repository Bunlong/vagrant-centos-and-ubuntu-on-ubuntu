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

### Create Ubuntu-based VirtualBox using Vagrant

This is actually and latest version of Ubuntu.

```
$ mkdir ubuntu
$ cd ubuntu
$ vagrant init ubuntu/xenial64
$ vagrant up
$ vagrant ssh
```

That's it. I am inside the Virtualbox.

In order to have everything up to date I also ran:

```
$ sudo apt-get update
$ sudo apt-get upgrade
```

I can exit it using exit and then I can shut down the VirtualBox by running

```
$ vagrant halt
```

Note: The intit command created a file called Vagrantfile that contains the configuration of the Vagrant image.

### Create Centos/7 VirtualBox using Vagrant

Just to further my experiments I've also created a separate VirtualBox using CentOS 7.

For this I created a second directory as we'll need a separate Vagrantfile.

```
$ mkdir centos
$ cd centos
$ vagrant init centos/7
$ vagrant up
$ vagrant ssh
```

We can update it to the latest pacakges using:

```
$ yum update
```
