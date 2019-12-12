# WARNING: Do not EDIT or MERGE this file, it is generated by 'packagespec lock'.
ARG BASE_IMAGE
FROM $BASE_IMAGE
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -y && apt-get install -y -q nodejs yarn=1.19.1-1 \
                      && rm -rf /var/lib/apt/lists/*