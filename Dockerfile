FROM ucsdets/scipy-ml-notebook:2019.4.6

USER root

#Update conda
RUN conda update conda

# Install R
RUN conda install -c r r

# Install R package Maftools 
RUN conda install -c bioconda bioconductor-maftools

# Install Python package Selenium
RUN pip install selenium

USER $NB_UID
