FROM ruby:2.5
RUN apt-get update && apt-get install build-essential -y
RUN apt-get install libpq-dev
RUN apt-get install nodejs -y
RUN apt-get install postgresql-client -y  
RUN apt-get install yarn -y    
WORKDIR /product-register
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install 
      
    





















