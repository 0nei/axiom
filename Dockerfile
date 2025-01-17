FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -yq apt-utils build-essential curl gcc \
    readline-common neovim git zsh zsh-syntax-highlighting zsh-autosuggestions jq build-essential python3-pip unzip git p7zip libpcap-dev rubygems ruby-dev grc

WORKDIR /root/.axiom
RUN git clone https://github.com/0nei/axiom /root/.axiom/
RUN mkdir /root/target-data

ENV PATH="${PATH}:/root/.axiom/interact"
ENTRYPOINT ["/bin/zsh"]
