FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y texlive-latex-base texlive-latex-recommended texlive-latex-extra texlive-bibtex-extra biber  && \
  rm -rf /var/lib/apt/lists/*

RUN groupadd --gid 1000 latex \
    && useradd --uid 1000 --gid latex --shell /bin/bash latex

USER latex

CMD ["pdflatex"]