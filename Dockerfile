FROM alpine as build
RUN apk add git make gcc musl-dev linux-headers
RUN git clone https://github.com/robertdavidgraham/masscan /masscan && make -C /masscan

FROM alpine
RUN apk add libpcap-dev
COPY --from=build /masscan/bin/masscan /bin/masscan
ENTRYPOINT [ "/bin/masscan" ]