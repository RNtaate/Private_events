# Private Events

## Project Description

This project involves building a lighter version of [eventbrites](https://www.eventbrite.com/) to demonstrate the concept of Associations in Ruby on Rails.

In the project, a user can sign up and sign in, create events and invite other users to those particular events.

An Unregistered User **can neither** create events **nor** view details of a particular event, but can view a list of created events by other users.

### Screenshot

![](images/private1.png)
![](images/private2.png)
![](images/private3.png)



## Built With

- Ruby 2.7.1
- Ruby on Rails 5.2.4.3

## Tested with
- Rspec
- Capybara

## How to run this project on your local machine

### Prerequisites
1. You should have ruby installed.(This project was tested on version `2.7.1`)
1. You should have rails installed.(This project was tested on version `5.2.4.3`)
1. You should have bundler installed.(This project was tested with Bundler version `2.1.4`)

   
### Steps to follow
1. Clone the repository to your local machine using `git clone git@github.com:RNtaate/Private_events.git`
1. On your local machine, navigate to the private events folder using `cd Private_events` in your terminal
1. Install all the gems for the project by running `bundle` in your terminal
1. Migrate the database using this command
`bin/rake db:migrate`
1. Start the server by using this command.
`bin/rails server`

1. Open this link in your favorite browser `http://localhost:3000`


## Live Demo

- [private events](https://rocky-retreat-20578.herokuapp.com/)

## Contributions

  There are two ways of contributing to this project:

1.  If you see something wrong or not working, please check [the issue tracker section](https://github.com/RNtaate/Private_events/issues), if that problem you met is not in already opened issues then open the issue by clicking on `new issue` button.

2.  If you have a solution to that, and you are willing to work on it, follow the below steps to contribute:
    1.  Fork this repository
    1.  Clone it on your local computer by running `git clone git@github.com:RNtaate/Private_events.git` __Replace *RNtaate* with the username you use on github__
    1.  Open the cloned repository which appears as a folder on your local computer with your favorite code editor
    1.  Create a separate branch off the *master branch*,
    1.  Write your codes which fix the issue you found
    1.  Commit and push the branch you created
    1.  Raise a pull request, comparing your new created branch with our original master branch [here](https://github.com/RNtaate/Private_events)

## Authors

👤 **Ershadul Rayhan**

- Github: [@ershadul1](https://github.com/ershadul1)
- Twitter: [@ErshadulRayhan](https://twitter.com/ErshadulRayhan)
- Linkedin: [ErshadulRayhan](https://www.linkedin.com/in/ershadulrayhan/)
- Email:  ershadul.rayhan@gmail.com


👤 **Roy Ntaate**

- Github: [@RNtaate](https://github.com/RNtaate)
- Twitter: [@RNtaate](https://twitter.com/RNtaate)
- Linkedin: [roy-ntaate](https://linkedin.com/in/roy-ntaate)


## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- This project was originally taken from [the Odin project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/associations)
- This project was inspired by the [Microverse](https:www.microverse.org) program
