FROM ubuntu:disco
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# Updates
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y apt-utils
RUN apt-get install -y git make g++ gcc

# Eigen package
RUN apt-get install libeigen3-dev -y

# GSL package
RUN apt-get install libgsl0-dev -y

# Create directory 
RUN mkdir -p /projects/PTE

# copy PTE folder
ADD PTE /projects/PTE

# makefiles
WORKDIR /projects/PTE
RUN make -C pte/
RUN make -C text2hin/
RUN make -C text2vec/

install python 3 and pip
RUN apt install python3-dev python3-pip -y

# python packages
RUN pip3 --no-cache-dir install --upgrade \
    scikit-learn \
    tqdm \
    pandas \
    numpy
