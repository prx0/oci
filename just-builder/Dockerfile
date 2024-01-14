FROM fedora-dev:39 as builder
RUN git clone https://github.com/casey/just.git
WORKDIR /just
ENV RUSTFLAGS "-C target-feature=-crt-static"
RUN cargo install --path . --locked

FROM scratch as just
COPY --from=builder /root/.cargo/bin/just just
