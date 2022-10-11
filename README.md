# PIZZA CODE CHALLENGE
This README would normally document whatever steps are necessary to get the
application up and running.

Getting Started with Create Rails
The title of my code challenge is Pizzaweek which i created buy running rails new Pizzaweek --skip-javascript-api after which i went to the directory
cd ...<name of then directory>
code . <to open up my code>

bundle install

I created three new models using the rails generate model <name> <attributes: datatype> --no-test-framework
i created three controllers which are named in plural forms and serializers that specify the attributes that are required in our json

Deferent routes where created eg index show and destroy

## SEED DATA
i created my own seed data and confirmed that it exists by rails db:seed and checking through from the rails console

In the project directory, you can run:

rails server and it will open the local host required 
Runs the app in the development mode.


The page will reload when you make changes.
You may also see any lint errors in the console.

A good schema design that is appropriate for the data being stored. Some of this data is simple and highly regular.


SETUP PROCESS You can git clone my ssh key from my repository git@github.com:Kemunto-wendy/pizzaedit.git to access it

### GITHUB LINK BACK END
https://github.com/Kemunto-wendy/pizzaedit

NAME OF ROUTE REQUEST METHOD ENDPOINT RESULT Index GET /model Return all items Show GET /model/:id Displays all items create POST /model Creates a new title and content update POST/PUT/PATCH /model/:id Updates the title and the content delete POST/DELETE /model/:id Deletes the title and the content

### GET /restaurants
Running http://127.0.0.1:3000/restaurants

### GET /restaurants/:id

### GET /pizzas
Running http://127.0.0.1:3000/pizzas

### GET /pizzas/:id
Running http://127.0.0.1:3000/pizzas/1

AUTHORS
JOY KEMUNTO

EMAIL
You can reach me out through my email joykemunto333@gmail.com.