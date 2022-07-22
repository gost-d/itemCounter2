FROM golang:1.18-alpine
WORKDIR /app 
COPY go.mod ./
COPY go.sum ./

RUN go mod download 

COPY *.go ./ 

RUN go build -o /item-counter
EXPOSE 9090

CMD [ "/item-counter" ]
