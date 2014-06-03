# auto-consul
#
# VERSION 0.0.2

FROM brianbianco/consul:0.2.1
MAINTAINER Ethan Rowe <ethan@the-rowes.com>

# Make sure package rep is up to date
RUN apt-get update

# We want 1.9+ for AWS SDK, and build-essential so nokogiri
# can build libxml2 &tc.
RUN apt-get -y install ruby1.9.3 build-essential

# The current nokogiri as of 2014-05-30
RUN gem install nokogiri -v 1.6.2.1

# The current AWS SDK as of 2014-05-30
RUN gem install aws-sdk -v 1.42.0

# The current auto-consul as of 2014-06-03
RUN gem install auto-consul -v 0.0.3


