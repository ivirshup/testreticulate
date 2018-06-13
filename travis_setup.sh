
if [[ $TRAVIS_OS_NAME == "linux" ]]; then
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
elif [[ $TRAVIS_OS_NAME == "osx" ]]; then
    export RETICULATE_PYTHON="$HOME/miniconda/bin/python"
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O miniconda.sh
fi
bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
hash -r
conda config --set always_yes yes --set changeps1 no
conda update -q conda
conda info -a
which pip
pip install numpy scanpy
# conda install numpy
# pip install scanpy