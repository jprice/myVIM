## My vim files.

### Requirements:
* Vim 7.3+
* Python support for Vim, Python 2.4+
* Exuberant ctags 5.5
* NodeJS, NodeJS-jshint
* ack (is a tool like grep)

### Installation (openSUSE):
add repository to get NodeJS:

    sudo zypper ar -f http://download.opensuse.org/repositories/devel:/languages:/nodejs/openSUSE_Tumbleweed NodeJS

    sudo zypper in vim vim-data vim-python ctags nodejs nodejs-jshint nodejs-lrucache ack

Another distributives:
You should install these packages via your favorite package manager or install from source code

and run:

    . .vim/install.sh

to install environment
