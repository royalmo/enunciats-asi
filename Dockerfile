# Build and push the image with:
#   docker build -t royalmo/itic_latex_runner .
#   docker push royalmo/itic_latex_runner

FROM debian:bookworm

RUN apt-get update && apt-get install -y texlive-full texlive-lang-spanish tex-gyre auctex wget make

RUN wget https://ocwitic.epsem.upc.edu/trans/latexbits/snippetsltx-20220622-1731-tar.gz/@@download/file/snippetsltx-20230606-1407.tar.gz
RUN mkdir -p /texbits_source && tar -xf snippetsltx-20230606-1407.tar.gz -C /texbits_source
RUN rm snippetsltx-20230606-1407.tar.gz
RUN cd /texbits_source && make
RUN cd / && rm -rf /texbits_source

RUN mkdir -p /output_tmp
RUN mkdir -p /output

WORKDIR /
ENV MAIN_TEX=main

CMD ["/bin/bash", "-c", "pdftex -halt-on-error -output-directory=output_tmp input/$MAIN_TEX.tex && mv output_tmp/$MAIN_TEX.pdf /output"]
