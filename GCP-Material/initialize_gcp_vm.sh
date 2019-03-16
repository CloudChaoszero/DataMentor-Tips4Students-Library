#!/bin/sh
sudo apt get-install
sudo apt-get install bzip2 git libxml2-dev

wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
rm Anaconda3-5.0.1-Linux-x86_64.sh
source .bashrc

# Update Jupyter Notebook IPv4 or IPV6 issues from version 5.0.1.
# (https://jupyter.readthedocs.io/en/latest/projects/upgrade-notebook.html)
conda update jupyter 

pip install kaggle --upgrade

jupyter notebook --generate-config
#!/bin/sh

sudo apt get-install
sudo apt-get install bzip2 git libxml2-dev

wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh
rm Anaconda3-5.0.1-Linux-x86_64.sh
source .bashrc

# Update Jupyter Notebook IPv4 or IPV6 issues from version 5.0.1

conda update jupyter
pip install kaggle --upgrade 

jupyter notebook --generate-config