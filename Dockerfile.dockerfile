FROM quay.io/jupyter/minimal-notebook

USER root
RUN sudo chown -R user:user ~/.local/share/jupyter 

