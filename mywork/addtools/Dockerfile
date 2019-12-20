FROM hiroshica/ubuntu1604update as dev

RUN apt-get install bison flex gettext texinfo wget cpio python unzip mercurial subversion libncurses5-dev libc6-dev-i386 bzr squashfs-tools gcj-4.9-jdk git -y


#FROM dev as builder
#RUN git clone https://github.com/tonyjih/RG350_buildroot /src/buildroot
#COPY rg350_defconfig /src/buildroot/configs/
#WORKDIR /src/buildroot
#RUN make rg350_defconfig && make
#
#FROM dev
#WORKDIR /root
#ENV PATH="/opt/gcw0-toolchain/usr/bin:$PATH"
#COPY --from=builder /opt/gcw0-toolchain /opt/gcw0-toolchain
#CMD ["/usr/bin/bash"]
