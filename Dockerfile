FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install wget unzip build-essential vim python3 python3-pip git -y
RUN git clone https://github.com/zaligvinder/zaligvinder.git
RUN pip3 install numpy tabulate npyscreen matplotlib
RUN mkdir -p tools/cvc4/
RUN mkdir -p tools/z3/
RUN wget -O /tools/cvc4/cvc4 https://github.com/CVC4/CVC4/releases/download/1.8/cvc4-1.8-x86_64-linux-opt && chmod +x /tools/cvc4/cvc4
RUN wget -O /tools/z3/z3-4.8.10-x64-ubuntu-18.04.zip https://github.com/Z3Prover/z3/releases/download/z3-4.8.10/z3-4.8.10-x64-ubuntu-18.04.zip && unzip /tools/z3/z3-4.8.10-x64-ubuntu-18.04.zip -d /tools/z3/ && rm -rf /tools/z3/z3-4.8.10-x64-ubuntu-18.04.zip
RUN echo '{"Binaries" : {"Z3Bin" : {"path" : "/tools/z3/z3-4.8.10-x64-ubuntu-18.04/bin/z3"},"cvc4" : {"path" : "/tools/cvc4/cvc4"}}}' > /zaligvinder/toolconfig.json