# Dockerfile
# # /path/to/your/app/Dockerfile

FROM ruby

RUN apt-get update -qq && apt-get install -y nodejs

# Cache Gems
WORKDIR /tmp
ADD Gemfile .

RUN bundle install --jobs 4

# A volume should be mounted here to provide folder to watch
WORKDIR /usr/src/guard

RUN guard init
# RUN apt-get install -y libreadline6 libreadline6-dev
WORKDIR /usr/src/app

CMD /bin/bash
