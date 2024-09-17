FROM FROM quay.io/jupyter/minimal-notebook

RUN sudo chown -R user:user ~/.local/share/jupyter 

