# README  

# My Anime List

## Description
<p align="center">Web project that registers animes by the user, being able to favorite or follow them</p>

<p align="center"><img src = "http://img.shields.io/static/v1?label=STATUS&message=IN%20INDEVELOPMENT&color=GREEN&style=for-the-badge"/></p>

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

```bash
* technologies
    devise gem 
    pundit gem
    font-awesome-sass(v5.15.1) gem
    SQLite3
    ruby 2.7.4p191
    Rails 5.2.6.2
```
* Author
    https://www.linkedin.com/in/samuel-borges-99152420a/

