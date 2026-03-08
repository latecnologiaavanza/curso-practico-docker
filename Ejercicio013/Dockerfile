FROM gcc:latest AS builder

WORKDIR /usr/src/app

COPY hello.c .

RUN gcc -static -o hello hello.c

CMD ["./hello"]