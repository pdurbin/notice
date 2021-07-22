# Notice

Just a little R project using ggplot2.

```
docker rm extract
docker build -t pdurbin/notice .
docker create --name extract pdurbin/notice
docker cp extract:/results/figure.png /tmp
docker cp extract:/results/figure.svg /tmp
```
