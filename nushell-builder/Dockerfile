FROM fedora-dev:39 as builder
RUN dnf install -y openssl openssl-devel
RUN git clone https://github.com/nushell/nushell.git
WORKDIR /nushell
RUN cargo install --path . --locked

FROM scratch as build
COPY --from=builder /root/.cargo/bin/nu nu
