******
Agenda
******

如果大家覺得很無聊，可以試著把以下的所以事情…通通搬到 Windows 上做，做完就上來講 light talk 吧

Vagrant Setup
=============

vagrant plugin install vagrant-vbguest

sudo apt-get install git-core python3-pip python-virtualenv python3-numpy


Python 套件一般由 pip 來安裝
但 pip 跟系統的套件維護者，立場有所衝突
例如安裝 Numpy，在座各位有誰能把握用 pip install numpy 就搞定，不準回答
所以可以看到 python3-pip ipython3 python3-numpy 由 Debian 所維護的 Python 套件

穩定，大部份的時間都能用
有時候會太舊，有時候太新
要小心不要用 sudo pip uninstall numpy
更不要再用 sudo pip install numpy 裝回去 xd
這樣就會讓 apt 很困擾


使用虛擬環境



記得你是用哪個 python 版本裝的（一般人還是用 python 2 裝的居多）


有人會提到 pyvenv



3.4
有個圖

這個問題在很多系統上還是有


Virtualenv
----------

virtualenv -p <python_path> <venv_dir>

建立一個獨立的環境

source <venv_dir>/bin/active
# pip install foo bar
deactivate

不要就把這個資料夾砍掉即可

demo
----

預設 python
換不同的 python 來源
版本號




就不會打過來嗎？








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
    # dont add following line
    # eval "$(pyenv virtualenv-init -)"


.. code-block::

    pyenv install -l | grep 3.3
    sudo apt-get build-dep python3.3 python2.7
    pyenv install 3.3.5
    pyenv install 2.7.7
    pyenv rehash

    which python2.7
    pyenv which python2.7

Virtualenv
----------

.. code-block::

    git clone https://github.com/yyuu/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

    virtualenv -p `pyenv prefix 3.3.5` venv_33
    . venv_33/bin/activate
    deactivate

Reference
=========

http://my.oschina.net/songmingming/blog/226292
http://torufurukawa.blogspot.tw/2014/02/pyenv-tox-python.html
