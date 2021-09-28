FROM linuxserver/tautulli

WORKDIR /app/tautulli/scripts

RUN apk --no-cache add curl \
                       unzip
ARG BRANCH=master

RUN curl -L https://github.com/blacktwin/JBOPS/archive/$BRANCH.zip --output $BRANCH.zip && \
    unzip $BRANCH.zip && \
    mv JBOPS-$BRANCH/* ./ && \
    rm -r JBOPS-$BRANCH && \
    rm $BRANCH.zip

# add ghost config file
COPY root/ /
