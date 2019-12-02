# Docker Buildx multi-arch image building

This repo provides a demonstration of [Docker Buildx](https://docs.docker.com/buildx/working-with-buildx) multi-arch image building, plus Concourse CI pipeline.

To see the published images and the supported architecture/platforms see https://hub.docker.com/r/starkandwayne/hello-multiarch-demo/tags

![docker-tags](https://cl.ly/45c1bb9ab2b2/docker-buildx-demo.png)

Test the resulting image on an arm64/x86 or ARM (raspberrypi) based Kubernetes:

```plain
kubectl run -i --rm \
  --image starkandwayne/hello-multiarch-demo:edge \
  --restart=Never --image-pull-policy=Always \
  hello
```

On Raspberry Pis, the output will be:

```plain
I was built on a platform running on linux/amd64, building this image for linux/arm/v7
```
