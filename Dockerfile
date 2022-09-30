FROM ubuntu

WORKDIR /app

RUN apt-get update && apt-get install -y \
    libgtest-dev \
    build-essential \
    cmake \
    clang \
    build-essential

RUN (cd /usr/src/googletest && cmake . && cmake --build . --target install)
