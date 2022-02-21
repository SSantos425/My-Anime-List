# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
* Project Name
    My Anime List;
* Description
    Web project that registers animes by the user, being able to favorite or follow them;
* Status
    In Development;
```bash
* Run applications;
    # Clone repository
       $ git clone https://github.com/SSantos425/My-Anime-List.git
    # Acess through terminal
       $ cd My-Anime-list
    # Install dependences
       $ bundle install
       $rails s
    # the server will boot in http://localhost:3000/

* Admin
    # Acess the page in http://localhost:3000/
        Register with email and password
    # Admin configuration
        $ rails console
        x = User.first
        x.role =  1
        x.save
```
* technologies
    devise gem 
    pundit gem
    font-awesome-sass(v5.15.1) gem
    ruby 2.7.4p191
    Rails 5.2.6.2

* Author
    https://www.linkedin.com/in/samuel-borges-99152420a/

