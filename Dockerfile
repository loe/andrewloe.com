FROM ruby:2.2-onbuild
CMD puma -p $PORT -e $RACK_ENV
