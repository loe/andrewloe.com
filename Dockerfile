FROM ruby:2.2-onbuild
CMD puma -p 9292 -e $RACK_ENV --dir /usr/src/app
