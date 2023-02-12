FROM rocker/tidyverse:4.2.2
ADD . /
RUN ./run.sh
