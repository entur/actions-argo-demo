# scratch is an empty image
FROM scratch
# For scanning demonstration purposes use alphine image
FROM alpine:3.14
# Switch to non-root user
USER 10100:10100
# Copy the binary
COPY target/release/hello-github-actions-musl /runme
# open port 8080
EXPOSE 8080
# Run the rocket binary
CMD ["/runme"]