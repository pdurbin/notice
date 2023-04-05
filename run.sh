#!/bin/sh
docker run -it --mount src=`pwd`,target=/notice,type=bind --workdir /notice rocker/tidyverse:3.5.0 Rscript code/plot.R
