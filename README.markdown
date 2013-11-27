## My vim files.

### Requirements:
* Vim 7.3+
* Python support for Vim, Python 2.4+
optional
* Exuberant ctags 5.5
* NodeJS, npm (to install csslint,jsonlint,jshint and etc.)
* ack
* csslint
* jshint
* jsonlint
* js-yaml

### Installation (openSUSE):
add repository to get NodeJS:

    sudo zypper in vim vim-data vim-python ctags nodejs ack

    sudo npm install jshint -g
    sudo npm install jsonlint -g
    sudo npm install csslint -g
    sudo npm install js-yaml -g

Another distributives:
You should install these packages via your favorite package manager or install from source code

Clone repo:

    git clone git://github.com/alexbel/myVIM.git ~/.vim

and run:

    . .vim/install.sh

to install environment.
Then open vim and install plugins


    :BundleInstall

