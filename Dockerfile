FROM continuumio/miniconda3
USER root
WORKDIR /usr/src/app
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    sudo \
    g++ \
    less \
    gcc-7 \
    g++-7 \
    gfortran-7 \
    git && \
    apt-get clean

RUN conda install -c conda-forge pymc3
RUN conda install seaborn bokeh jupyter jupyterlab scikit-learn

RUN jupyter serverextension enable --py jupyterlab

ENV DEBIAN_FRONTEND dialog