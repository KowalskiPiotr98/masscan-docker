FROM alpine:3 as build
RUN apk add git make gcc musl-dev linux-headers
RUN git clone https://github.com/robertdavidgraham/masscan /masscan && make -C /masscan

FROM alpine:3
RUN apk add libpcap-dev && rm -rf /var/cache/apk/*
COPY --from=build /masscan/bin/masscan /bin/masscan
ENTRYPOINT [ "/bin/masscan" ]