FROM hiroshica/baseimage as builder
###
#RUN apt-get update
#RUN apt-get install build-essential rsync bc bison flex gettext texinfo wget cpio python unzip mercurial subversion libncurses5-dev libc6-dev-i386 bzr squashfs-tools git gcj-4.9-jdk -y
###
RUN rm -rf /src/buildroot/configs/
#RUN git clone https://github.com/Ninoh-FOX/RG350_buildroot.git /src/buildroot # now repo
RUN git clone https://github.com/tonyjih/RG350_buildroot.git /src/buildroot   # top repo
###
WORKDIR /src/buildroot
RUN make rg350_defconfig BR2_EXTERNAL=board/opendingux
RUN make

FROM dev
WORKDIR /root
ENV PATH="/opt/gcw0-toolchain/usr/bin:/opt/rg350-toolchain/usr/bin:$PATH"
COPY --from=builder /opt/gcw0-toolchain /opt/gcw0-toolchain
RUN ln -s /opt/gcw0-toolchain /opt/rg350-toolchain
CMD ["/usr/bin/bash"]
