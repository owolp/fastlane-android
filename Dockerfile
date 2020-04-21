FROM menny/android:latest

# install OS packages
RUN apt-get --quiet update --yes
RUN apt-get --quiet install --yes ruby ruby-dev