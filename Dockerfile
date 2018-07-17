FROM gcc:latest
ADD ./chipmunk /udpxy
WORKDIR /udpxy
RUN make && make install
ENV PORT=80
CMD udpxy -T -v -p $PORT
