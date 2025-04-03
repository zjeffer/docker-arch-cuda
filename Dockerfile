FROM archlinux:latest

# cuda & dependencies
RUN pacman -Syyu --noconfirm cuda cudnn unzip wget

# install Libtorch
ARG LIBTORCH_URL="https://download.pytorch.org/libtorch/cu126/libtorch-cxx11-abi-shared-with-deps-2.6.0%2Bcu126.zip"
ARG LIBTORCH_ZIP="libtorch-cxx11-abi-shared-with-deps-2.6.0+cu126.zip"
RUN wget $LIBTORCH_URL && unzip $LIBTORCH_ZIP && rm $LIBTORCH_ZIP && mv libtorch /usr/include/libtorch
