# Create a Jekyll Container from a Ruby Apline image

# At a minimum, use Ruby 2.5 or later
FROM ruby:2.7-alpine3.15

# Add Jekyll dependencies
RUN apk update 
RUN apk add --no-cache build-base gcc cmake git 

# Update the Ruby bundles and install Jekyll
RUN gem update bundler && gem install bundler jekyll 