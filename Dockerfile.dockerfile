FROM quay.io/jupyter/minimal-notebook

RUN sudo chown -R jovyan /home/jovyan/.local/share/jupyter

