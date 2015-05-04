FROM ruby:2.2-onbuild
CMD puma -c /usr/src/app/config/puma.rb -e $RACK_ENV
