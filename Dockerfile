FROM uber/prototool:latest

# Allows github access to private repos
RUN git config --global url."https://${GITHUB_TOKEN}:@github.com/".insteadOf "https://github.com/"

# Clones a local copy of the codebase
RUN git clone https://github.com/${GITHUB_REPOSITORY}.git app

WORKDIR /work/app

ENTRYPOINT [ "prototool" ]
