
# install python
if [[ $TRAVIS_OS_NAME == "linux" ]]; then
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
elif [[ $TRAVIS_OS_NAME == "osx" ]]; then
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O miniconda.sh
fi

bash miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
# export RETICULATE_PYTHON="$HOME/miniconda/bin/python"
hash -r
conda config --set always_yes yes --set changeps1 no
conda update -q conda
# source activate base
conda info -a
# Scanpy dependencies
conda install -q numpy seaborn scikit-learn statsmodels numba
pip install --upgrade pip
pip install scanpy
pip install phate
echo "check python installation"
pip list
conda list
which python