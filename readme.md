# Markov Chain Text Generator: Dad Joke Edition
This program fetches a random Dad Joke from the api at https://icanhazdadjoke.com/, and generates a brand-new joke based on the input text using a Markov Chain. To run, download this repository and follow the instructions below.

## System requirements
- Ruby 2.6.5 or higher
- Rails 6.0.3.3 or higher
- Node 12.18.0 or higher
- Heroku 7.42.1 or higher (for initializing application)
    - *Note - If you don't have the heroku CLI installed and want to run both the API and Client manually, see below instructions for manual startup*

## Directions

#### API -
- `$ cd application` - This is the main project directory. Inside is the rails application, as well as the client.
- `$ bundle install` - Install dependencies for rails application
- `$ rails db:setup` - Create database
- `$ rails db:migrate` - Run db migration

#### Client -
- `$ cd client` - The client application is located within the rails app. We will need to install dependencies here as well
- `$ yarn install` or `$ npm install` - depending on your node package manager of choice

#### Startup -
- `$ cd ..` - return to application directory to run project
- `$ rake start` - this command will run both the API and the client simultaneously

#### Manual Startup - 
If you don't have the Herkou CLI installed, the Procfile initializing both the client and the API will not work. The application can still be started with the following steps after all dependencies are installed.
 
- open two terminal tabs from the root of the project.
- In the first, run `$ cd application` and `$ rails s -p 3001` to start API
- In the second run `$ cd application/client` and `npm run start` to start client

Assuming the setup succeeded, the API will be running on your local port 3001, and the client on port 3000. A browser window should open automatically upon startup, but can be manually accessed at `http://localhost:3000`. Click the button and get a unique dad joke!

### Notes
The application is relatively bare-bones, but I believe it addresses lots of concepts required for a modern full-stack web app. The Markov Chain generator was particularly interesting, and my algorithm was based off of this explanation: https://youtu.be/eGFJ8vugIWA. The jokes aren't always perfect, though usually entertaining. The 'order' parameter can be tweaked to increase or decrease the variablility in the sentence generated.

If I had more hours in the day, I would have attempted to implement more of the stretch goals - API request caching and accepting user input would be the main two. I also think it would be neat to accept a parameter to set the order in the generator, allowing the user to decide how 'scrambled' their new joke would be. Perhaps this could be passed fromm the client via a dropown. I might also add some more routes, allowing users to fetch or search for dad jokes that were previously generated and stored. Additionally, I would add more comprehensive test coverage. The existing tests can be run from the `application` directory with the command `$ rspec`

All in all, I enjoyed this exercise and I look forward to discussing my submission further at your convenience. Thank you for your time and consideration! 

Sam Catherman