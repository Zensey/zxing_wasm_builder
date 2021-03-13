FROM emscripten/emsdk

RUN apt update && apt install git

ADD . /app/
WORKDIR /app

CMD ["/bin/bash", "build_script.sh"]