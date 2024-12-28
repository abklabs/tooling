ABKLabs Tooling
===============

In order to make building and running software at ABKLabs easier,
we've started organizing our tooling into a central location with
automatic installation and updates.

Note: This bootstrap will not currently install Homebrew.  Please
follow the instructions at https://brew.sh if you haven't already
installed it on your system.

Scripts that are shared by all ABKLabs projects are also stored 
in this repository. Simply run `make install` to install the 
latest version of these scripts. Then commit your changes to each
project's repository.

### To setup your development environment, please run the following:

1. Clone this repository:

```
mkdir -p ~/sandbox
cd ~/sandbox
git clone git@github.com:abklabs/tooling
```

2. Bootstrap the repository:

```
cd ~/sandbox/tooling
./bootstrap
```
