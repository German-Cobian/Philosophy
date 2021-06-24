![](https://img.shields.io/badge/Microverse-blueviolet)

# Philosopher Website

This is a Desktop version of a blog where the user can create articles and share articles relating to the main four topics in Philosophy (Metaphysics, Gnoseology, Logic and Ethics).

1. The user can sign up and then sign in to the app by merely typing his username.
2. The user is presented with a Homepage that includes:
    1. A Navigation bar that displays allows the user to sign up, sign in, or sign out, according to his session status, and links to the different categories.
    2. Featured article with full-width image and title in the first row. This is the article with the biggest number of votes.
    3. A list of all categories in order of priority. Each category is displayed as a square with its name on the top and its most recent article's title in the bottom. The background image is that of the most recent article in this category.
3. When the user clicks the category name they can see all articles in that category:
    1. Articles are sorted by most recent.
    2. Each article displays: image, title, truncated text as preview and its author name.
    3. A button to vote for the article of his choice (each user can vote only once).
    3. A "Read More" button that takes the reader to the article itself.
5. When user clicks Write an article in the Navigation bar page a form with all necessary fields is displayed.

## Entity Relationship Diagram

![Entity Relationship Diagram](https://user-images.githubusercontent.com/68709712/119987537-fe1a0c00-bf79-11eb-9889-ecbe9ede1228.png)

## Live Preview

https://infinite-brook-64209.herokuapp.com/


## Getting Started

To get a local copy up and running follow these simple example steps:


### Prerequisites

* Ruby 2.7.0
* Rails 5.2.4
* Postgres: >=9.5
* Node.js
* Yarn


### Setup and Install

* Open your terminal - Windows: `Win + R`, then type `cmd` | Mac: `Command + space`, then type `Terminal`
* Navigate to a directory of your choosing using the `cd` command
* Run this command in your OS terminal: `git@github.com:German-Cobian/Philosophy.git` to get a copy of the project
* Navigate to the project's directory using the `cd` command
* Run `git checkout philosophy-feature` to work inside the proper branch of the project
* Run `rails webpacker:install` to configure Webpacker for your environment. Otherwise, an error like `Webpacker::Manifest::MissingEntryError` will appear if you attempt to run the server.
* Install dependencies by running `bundle install`
* Migrate the database to your environment by running `rails db:migrate` and then seed the app with data that is pre-packaged for its pages to display by running`rails db:seed`
* Navigate to the bin folder of the project using the `cd` command and then execute `rails server` to fire up the server
* Visit `http://localhost:3000/` in your browser to get into the app
* If you obtain the error `ArgumentError in Categories#index` it means that the app did not get successfully seeded. Run `rails db:reset` to get it seeded
* Copy `validates :image, presence: true` into `app/models/article.rb` (this validation does not allow the article database to be seeded if it is in place before running `rails db:seed`)
* Interact with the app using the links in the nav bar. To access private pages, sign up by clicking the `Sign Up` link
* To close the server, enter `Ctrl + C` in your terminal


## Authors

👤 **German Cobian**

* GitHub: [@German-Cobian](https://github.com/German-Cobian)
* Twitter: [@GermanCobian1](https://twitter.com/GermanCobian1)
* LinkedIn: [@german-cobian](https://www.linkedin.com/in/german-cobian/)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!


## Acknowledgments

Guidelines for this project supplied by Microverse.


## 📝 License

This project is [MIT](https://github.com/German-Cobian/Re-former/blob/re-former-feature/LICENSE) licensed.