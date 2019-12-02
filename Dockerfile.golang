FROM --platform=$BUILDPLATFORM golang:alpine AS build
ARG TARGETPLATFORM
ARG BUILDPLATFORM
ADD . /buildspace
WORKDIR /buildspace
RUN go build -o buildx-demo ./...

FROM alpine
COPY --from=build /buildspace/buildx-demo /usr/bin/buildx-demo
ENTRYPOINT [ "/usr/bin/buildx-demo" ]
