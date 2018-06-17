FROM ruby:2.5.1

ENV CURRENT_WORKING_DIR myapp

RUN apt-get update && \
	apt-get -y install --no-install-recommends apt-transport-https apt-utils

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash - && \
	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
	echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update
RUN apt-get -y install nodejs yarn

RUN mkdir $CURRENT_WORKING_DIR
WORKDIR $CURRENT_WORKING_DIR

ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle install

ADD package.json package.json
ADD yarn.lock yarn.lock
RUN yarn install --pure-lockfile

ADD . $CURRENT_WORKING_DIR
