FROM ubuntu:24.04

RUN apt-get update && apt-get install --no-install-recommends -y curl ca-certificates && \
    curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin && \
    curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin

COPY requirements.txt .

CMD ["syft", "requirements.txt", "-o", "cyclonedx-json"]
