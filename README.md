# Client Repo
https://github.com/cavallaroc9/christa-full-stack

# Heroku App URL
https://murmuring-beyond-57422.herokuapp.com

# Deployed URL
https://cavallaroc9.github.io/christa-full-stack/


# Back End Description
The back end includes two tables: users, and exercises. The user table has a one to many relationship with the exercises table. A user can have many exercises. Exercises belong to a user. The exercise table has a foreign key as a way to reference the user table.

Users can create an account, log into that account, change their password, and log out.

Once logged in, a user can create an exercise, update an exercise, or delete an exercise. They can also view all exercises or view one excercise based on an id.

This is all done by making calls to the API through AJAX requests.


### Authentication

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |

### Exercises

| Verb   | URI Pattern      | Controller#Action  |
|:-------|:-----------------|:-------------------|
| GET    | `/exercises`     | `exercises#index`  |
| GET    | `/exercises/:id` | `exercises#show`   |
| POST   | `/exercises`     | `exercises#create` |
| PATCH  | `/exercises/:id` | `exercises#update` |
| DELETE | `/exercises/:id` | `exercises#destroy`|


# Technologies Used
* Ruby on Rails
* Heroku
* AJAX


# Unsolved Problems
Currently I do not have any unsolved problems. What I would like to do in a future iteration is add a workouts table. With a workout table, a user could have many workouts, and each workout could have many exercises. In order to do this I would have to create a join table that references the workouts table and the exercises table.

# Planning, development process and problem-solving strategy (Back End Only)

### Planning and Development Process
* First I setup my API
* I then deployed to heroku
* Once the API an heroku were setup, I scaffolded my exercise resource
* After the exercise resource was created I tested authentication (sign up, sign in, change password, signout) using curl scripts.
* I then created curl scripts (create, destroy, index, show, update) for my exercise resource.
* I tested each if these requests using the curl scripts to make sure they worked for my resource
* I then added a relationship between the user table an the exercise table so that the exercise table has a reference to the user table.
* I updated the exercise controller to inherit from ProtectedController
* I also updated the exercise model to make all fields on the exercise table, except for notes, required so that a resource has to include these attributes.
* Once this relationship was create and the controller was updated, I updated the exercise curls scripts so that it included an authentication header. I retested the curl scripts by passing in the token of the logged in user.
* After successful testing of the backend, I moved on to working on the client.

### Problem Solving Strategy
* I made sure to break up my plan into very small steps. Once my resource was created, I made sure it was completely working using curl scripts before adding the relationship to users. This helped me understand what type of responses were expected. Once I created the relationship to users, my curls scripts stopped working. I used class notes to figure out how to update them. Since authentication was now required to make any requests, I needed to pass the token of the logged in user into the authentication header of exercise curl scripts. Getting all of the curls scripts to work helped me understand how to connect to the API with ajax requests.

# ERD
https://imgur.com/ewnOT5z
