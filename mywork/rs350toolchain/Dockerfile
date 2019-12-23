FROM hiroshica/ubuntu1604rs350base as builder
RUN git clone https://github.com/tonyjih/RG350_buildroot /src/buildroot
COPY rg350_defconfig /src/buildroot/configs/
WORKDIR /src/buildroot
RUN make rg350_defconfig && make
#
#FROM dev
#WORKDIR /root
#ENV PATH="/opt/gcw0-toolchain/usr/bin:$PATH"
#COPY --from=builder /opt/gcw0-toolchain /opt/gcw0-toolchain
#CMD ["/usr/bin/bash"]
