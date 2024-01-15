FROM fedora-dev:39 as builder
RUN git clone https://github.com/casey/just.git
WORKDIR /just
RUN cargo install --path . --locked

FROM scratch as build
COPY --from=builder /root/.cargo/bin/just just
