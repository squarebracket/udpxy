FROM gcc:latest
ADD ./chipmunk /udpxy
WORKDIR /udpxy
RUN make && make install
CMD udpxy -T -v -p 80
