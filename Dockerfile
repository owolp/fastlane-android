FROM jangrewe/gitlab-ci-android:latest

# Installing build tools
RUN apt-get update && \
  apt-get install -y \
  build-essential \
  ruby \
  ruby-dev

# Installing fastlane
RUN gem install fastlane

# Installing bundle
RUN gem install bundler

# Install deprendencies
RUN bundle install

# Work directory
WORKDIR /app
