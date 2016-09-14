# Flickr Clone :camera:

Ruby on Rails application made to replicate the functionality of the site `https://flickr.com`. The process of building this site helped us practice using Paperclip (file uploading), Devise (user authentication), FactoryGirl and SimpleCov (unit and integration testing).

### Installation

Open Terminal and clone the repository.  
```
$ cd Desktop
$ git clone https://github.com/noahramey/flickr_clone.git
```

Navigate to the repository and bundle Ruby gems:
```
$ cd flickr_clone
$ bundle install
$ git remote remove origin
```

Make sure Postgres is running on your local machine, then setup the database:
```
$ rails db:setup db:test:prepare
```

Start the Rails server.
```
$ rails s
```

Open your browser and navigate to `localhost:3000`. You are now ready to start making your app!


License
-------

MIT License. Copyright &copy; 2016 "Noah Ramey and Caleb Stokka"
