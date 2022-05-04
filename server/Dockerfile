FROM nginx:latest

ENV DIR=/usr/share/nginx/html
ENV N=100

RUN for i in $(seq 1 $N); do mkdir $DIR/$i ; done
RUN for i in $(seq 1 $N); do for j in $(seq 1 $N); do echo $((i + j)) > $DIR/$i/$j; done ; done

# To run:
# docker run -p 3000:80 $(docker build -q .)

# To test manually:
# curl localhost:3000/17/25  # -> 42

# To test automatically, from the `../client` dir:
# docker run $(docker build -q .)
