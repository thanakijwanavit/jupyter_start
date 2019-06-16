#!/usr/bin/env bash
docker container stop jupyter
#docker container rm jupyter
docker run -itd --rm \
--user root \
-e JUPYTER_ENABLE_LAB=yes \
--name jupyter \
-e GRANT_SUDO=yes \
-v /home/nic/jupyter:/home/jovyan/work \
-p 8888:8888 jupyter/datascience-notebook \
start-notebook.sh --NotebookApp.token='79a11ebfb7dfacde19c8c56a8714d20176bad9c92cae702a'