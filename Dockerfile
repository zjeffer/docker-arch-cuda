FROM archlinux:latest

# cuda & dependencies
RUN pacman -Syyu --noconfirm cuda cudnn unzip wget

# install Libtorch
ARG LIBTORCH_URL="https://download.pytorch.org/libtorch/cu113/libtorch-cxx11-abi-shared-with-deps-1.11.0%2Bcu113.zip"
ARG LIBTORCH_ZIP="libtorch-cxx11-abi-shared-with-deps-1.11.0+cu113.zip"
RUN wget $LIBTORCH_URL && unzip $LIBTORCH_ZIP && rm $LIBTORCH_ZIP && mv libtorch /usr/include/libtorch
