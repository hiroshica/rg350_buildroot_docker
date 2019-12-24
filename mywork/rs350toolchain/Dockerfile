FROM hiroshica/buildtop as builder
FROM ubuntu:latest as dev
WORKDIR /working
ENV PATH="/opt/rg350-toolchain/usr/bin:$PATH"
COPY --from=builder /home/working/RG350_buildroot/output /opt/rg350-toolchain



