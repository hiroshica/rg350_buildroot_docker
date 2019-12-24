FROM ubuntu:xenial as builder
RUN apt-get update
RUN apt-get install build-essential rsync bc bison flex gettext texinfo wget cpio python unzip mercurial subversion libncurses5-dev libc6-dev-i386 bzr squashfs-tools git gcj-4.9-jdk -y
RUN git clone https://github.com/Ninoh-FOX/RG350_buildroot.git /src/buildroot
#COPY rg350_defconfig /src/buildroot/configs/
WORKDIR /src/buildroot
RUN make rg350_defconfig && make


FROM dev
WORKDIR /root
ENV PATH="/opt/gcw0-toolchain/usr/bin:/opt/rg350-toolchain/usr/bin:$PATH"
COPY --from=builder /opt/gcw0-toolchain /opt/gcw0-toolchain
RUN ln -s /opt/gcw0-toolchain /opt/rg350-toolchain
CMD ["/usr/bin/bash"]
