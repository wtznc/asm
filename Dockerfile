FROM ubuntu:latest

RUN apt-get update && apt-get install -y build-essential

WORKDIR /app

COPY exit.s /app/

RUN as -o exit.o exit.s && ld -o exit exit.o

CMD ["./exit"]