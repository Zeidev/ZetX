FROM harshpreets63/mirrorbot:test
RUN apt-get -qq update && apt-get -qq install -y git
WORKDIR /app
RUN chmod 777 /app
RUN apt-get install git -y
RUN git clone https://github.com/Zeidev/Mirror-Bot /app
COPY resources/setup.sh .
COPY . .
RUN bash resources/setup.sh
CMD ["bash","resources/MirrorX"]
