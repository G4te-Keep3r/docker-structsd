container_name="`cat container_name.txt`"

docker run -it -p 26656:26656 --mount source=${container_name},target=/src --name=${container_name} structs/structsd:latest
