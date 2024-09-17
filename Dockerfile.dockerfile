FROM quay.io/jupyter/minimal-notebook

USER jovyan

RUN chown -R jovyan /home/jovyan/.local/share/jupyter

