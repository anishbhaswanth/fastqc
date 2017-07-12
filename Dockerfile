FROM ubuntu:16.04
MAINTAINER Anish Chakka <abc46@pitt.edu>

RUN apt-get update && apt-get install -y fastqc perl-doc
CMD bash
