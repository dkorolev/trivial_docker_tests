FROM ubuntu:latest
RUN apt-get update
RUN apt-get install -y curl
COPY ./run_test.sh /usr/bin/test
CMD ["test"]

# To test:
#
# 1) Start the container from `../server`, with:
#    docker run -p 3000:80 $(docker build -q .)
#
# 2) Run this test with:
#    docker run $(docker build -q .)
#
#    Alternatively, run the test against something other than the other locally-run service on port 3000:
#    docker run $(docker build -q .) test ${HOST:PORT}
