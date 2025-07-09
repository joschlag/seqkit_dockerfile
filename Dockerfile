FROM continuumio/miniconda3:25.1.1-2

ENV PATH /opt/conda/bin:$PATH

RUN conda config --append channels bioconda && \
    conda config --append channels conda-forge && \
    conda config --append channels anaconda && \
    conda install -y python=3.12 seqkit=2.10.0 && \
    conda clean -a -y

CMD ["seqkit"]
