FROM ubuntu:16.04

# Install needed packages
RUN set -x && \
    apt-get update && \
    apt-get install -y git && \
    apt-get install -y tzdata && \
    apt-get install -y gcc g++ && \
    apt-get install -y python python-dev python-pygccxml && \
    apt-get install -y mercurial && \
    apt-get install -y valgrind && \
    # apt-get install -y gsl-bin libgsl0-dev libgsl0ldbl && \
    apt-get install -y flex bison libfl-dev && \
    apt-get install -y tcpdump && \
    apt-get install -y vtun lxc && \
    apt-get install -y uncrustify && \
    apt-get install -y python-pygraphviz python-kiwi python-pygoocanvas libgoocanvas-dev libxml2-dev && \
    # compile ns3
    mkdir /src && \
    cd /src && \
    git clone https://github.com/mkheirkhah/mptcp.git && \
    cd ./mptcp && \
    ./waf -d debug --enable-examples --enable-tests configure && \
    ./waf && \
    # clean
    apt-get clean
