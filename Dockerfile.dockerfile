FROM quay.io/jupyter/minimal-notebook

USER root

RUN sudo jupyter notebook --allow-root
RUN sudo chmod -R 777 .local

