# Notice

Just a little R project using ggplot2.

Most recently tested using Podman on an M2 Mac.

```
docker rm extract
docker build --platform linux/x86_64 -t pdurbin/notice .
docker create --platform linux/x86_64 --name extract pdurbin/notice
mkdir /tmp/out
docker cp extract:/results/figure.png /tmp/out
#docker cp extract:/results/figure.svg /tmp
```
