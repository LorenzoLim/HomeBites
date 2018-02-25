# HomeBites

* This web application is deployed at: https://homebites-food-network.herokuapp.com/

* This application provides a platform for users to be able to sell home-cooked meals to one another. User can upload images of their dishes and sell dishes or users can go on the website just to buy meals.

* This application promotes local growth as majority of the money is cycled within the community and this application only takes a small cut between transactions for providing the platform.

* You can view all the cuisine listed or select which cuisines you want to view.

* You can also view all the cooks so that you can see all the dishes that they created.

# Setup

* Run Bundle install to install all the gems

* Run rails db:migrate to run all the migratations

* Create a .env file and add it to the same directory as the gitignore files

* It should have the following data in the .env file:
S3_BUCKET_NAME=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_REGION=

STRIPE_PUBLISHABLE_KEY=
STRIPE_CLIENT_SECRET=
STRIPE_CLIENT_ID=

MAILGUN_API_KEY=
MAILGUN_DOMAIN=

GOOGLE_API_KEY=

* Run the server through the terminal with: rails server

# Usage

* You have to sign up to devise to be able to view or buy food. Any action in regards to the dishes will ask for authentication because you have to be a user to buy a dish so that an email can be sent.

* You can sort which cuisine you want to see with the cuisine dropdown that will list all your options.

* You can also view all the cooks and clicking on the images of either the cook or the food will redirect you to the cook page or the dish page.
