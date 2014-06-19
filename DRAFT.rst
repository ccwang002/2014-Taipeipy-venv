******
Agenda
******

如果大家覺得很無聊，可以試著把以下的所以事情…通通搬到 Windows 上做，做完就上來講 light talk 吧

Vagrant Setup
=============

vagrant plugin install vagrant-vbguest

sudo apt-get install git-core python3-pip python-virtualenv python3-numpy


Pip Wheel
=========

# but along with lots of mess
# sudo apt-get build-deps python3-numpy

pip3 wheel --wheel-dir=/home/vagrant/wheelhouse numpy
pip install --use-wheel --no-index --find-links=/home/vagrant/wheelhouse numpy

http://python-packaging-user-guide.readthedocs.org/en/latest/tutorial.html#virtual-environments

Jessica McKellar Do a thing with python you never done before 2015

http://wheel.readthedocs.org/en/latest/index.html


TOX
===

.. code-block::

    sudo apt-get install python-tox

Pyenv
=====

Debian 安裝
-----------

.. code-block::

    # follows official guide
    curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

Put the following lines in ``~/.profile``

.. code-block::

    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"


.. code-block::

    pyenv install -l | grep 3.3
    sudo apt-get build-dep python3.3 python2.7
    pyenv install 3.3.5
    pyenv install 2.7.7
    pyenv rehash

    which python2.7
    pyenv which python2.7

Pyenv-virtualenv
----------------

.. code-block::

    git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

    pyenv virtualenv -p python3.4 venv-sys34
    pyenv activate venv-sys34
    pyenv deactivate

Reference
=========

http://my.oschina.net/songmingming/blog/226292
http://torufurukawa.blogspot.tw/2014/02/pyenv-tox-python.html
