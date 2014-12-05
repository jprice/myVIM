## My vim settings

### Requirements:
* Vim 7.3+
* Python support for Vim, Python 2.4+

optional:
* Exuberant ctags 5.5
* NodeJS, npm (to install csslint,jsonlint,jshint and etc.)
* ack
* csslint
* jshint
* jsonlint
* js-yaml
* jsfmt


## Screenshots
![](https://raw.githubusercontent.com/alexbel/myVIM/master/screenshots/snapshot1.png)
![](https://raw.githubusercontent.com/alexbel/myVIM/master/screenshots/snapshot2.png)
![](https://raw.githubusercontent.com/alexbel/myVIM/246e17dc1bdb783c8c40e64a4f46fb28a0b6b6c8/screenshots/snapshot3.png)

### Installation (openSUSE):
add repository to get NodeJS:

    sudo zypper in vim vim-data ctags nodejs ack

    sudo npm install jshint -g
    sudo npm install jsonlint -g
    sudo npm install csslint -g
    sudo npm install js-yaml -g
    sudo npm install jsfmt -g

Another distributives:
You should install these packages via your favorite package manager or install from source code

Clone repo:

    git clone git://github.com/alexbel/myVIM.git ~/.vim

and run:

    . .vim/install.sh

to install environment.
Then open vim and install plugins


    :BundleInstall

