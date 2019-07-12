FROM golang:stretch
WORKDIR /go/src/github.com/jannispinter/
RUN git clone https://github.com/jannispinter/white-noise-generator.git
WORKDIR /go/src/github.com/jannispinter/white-noise-generator
RUN go get && go build
ARG LENGTH=600
RUN ./white-noise-generator -duration=${LENGTH} -filename /opt/white-${LENGTH}s.wav