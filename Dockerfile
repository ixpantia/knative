FROM rocker/r-ver:4.0.2

MAINTAINER "Frans van Dunné" frans@ixpantia.com

RUN apt-get update && apt-get -y install \
    libxml2-dev \
    r-cran-xml \
    libcurl4-openssl-dev \
    libssl-dev \
    libsodium-dev

# Instala packrat
RUN R -e 'install.packages("renv", repos="http://cran.rstudio.com", dependencies=TRUE, lib="/usr/local/lib/R/site-library")'

COPY . /app
WORKDIR /app

RUN R -e 'renv::restore(project = "/app")'

EXPOSE 9080

ENTRYPOINT ["Rscript"]
CMD ["arranca.R"]
