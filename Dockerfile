FROM docker.io/zmkfirmware/zmk-build-arm:3.5
RUN git clone https://github.com/zmkfirmware/zmk --depth 1
WORKDIR /zmk
RUN west init -l app
RUN west update
WORKDIR /zmk-config
