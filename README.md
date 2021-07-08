# build oc-cli images
```
# build image based on ubi8
docker build -t oc-cli:ubi8 -f Dockerfile.ubi8 .

# build image based on alpine
docker build -t oc-cli:alpine -f Dockerfile.alpine .
```

# run oc-cli images
```
docker run -it --rm --net=host oc-cli:ubi8
```
