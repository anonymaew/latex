FROM alpine

RUN apk add texlive-full
RUN apk add \
	biber make 

WORKDIR /data
COPY Makefile /data/Makefile
COPY entrypoint.sh /entrypoint.sh
VOLUME ["/data"]
ENTRYPOINT ["/entrypoint.sh"]
