FROM ubuntu:24.04

RUN apt-get update && apt-get install -y curl ca-certificates && \
    curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | bash -s -- -b /usr/local/bin && \
    curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | bash -s -- -b /usr/local/bin

COPY requirements.txt .

CMD ["syft", "requirements.txt", "-o", "cyclonedx-json"]
