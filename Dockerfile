FROM golang:alpine AS build
ADD . /buildspace
WORKDIR /buildspace
RUN \
  go build -o buildx-demo ./...

FROM alpine AS app
COPY --from=build /buildspace/buildx-demo /usr/bin/buildx-demo
CMD [ "/usr/bin/buildx-demo" ]

FROM app
