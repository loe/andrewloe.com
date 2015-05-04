FROM ruby:2.2-onbuild
CMD puma -C /usr/src/app/config/puma.rb -e $RACK_ENV
