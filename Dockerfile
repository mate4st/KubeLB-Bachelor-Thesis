FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y texlive-latex-base texlive-lang-german texlive-bibtex-extra biber && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["pdflatex"]