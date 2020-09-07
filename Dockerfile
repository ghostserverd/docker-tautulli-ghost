FROM linuxserver/tautulli

WORKDIR /app/tautulli/scripts

RUN apk --no-cache add curl \
                       unzip

RUN curl -L https://github.com/blacktwin/JBOPS/archive/python3.zip --output python3.zip && \
    unzip python3.zip && \
    mv JBOPS-python3/* ./ && \
    rm -r JBOPS-python3 && \
    rm python3.zip

# add ghost config file
COPY root/ /
