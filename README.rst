roamin9's vim config
######################

setup user's vimrc
-------------------

::

  ./setup_vimrc

vim's plugin use submodule type:
--------------------------------

Add submodule

::

  mkdir ~/.vim/bundle
  git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
  git add .
  git commit -m "Install Fugitive.vim bundle as a submodule."

Installing your Vim environment on another machine

::

  cd ~/.vim
  git submodule init
  git submodule update
  # or git submodule update --init

Upgrading a plugin bundle

::

  cd ~/.vim/bundle/fugitive
  git pull origin master

Upgrading all bundled plugins

::

  git submodule foreach git pull origin master


