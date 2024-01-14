FROM fedora-dev:39 as builder
RUN git clone https://github.com/helix-editor/helix
WORKDIR /helix
ENV RUSTFLAGS "-C target-feature=-crt-static"
RUN cargo install --path helix-term --locked

FROM scratch as helix
COPY --from=builder /root/.cargo/bin/hx hx
COPY --from=builder /helix/runtime runtime
