# ASSESSMENT 6: Interview Practice Questions
Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer: animal_id, the foreign key would go to sightings because an animal can have many sightings at different times.

  Researched answer:



2. Which routes must always be passed params and why?

  Your answer: params.require

  Researched answer:



3. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess".

  Your answer: get '/main/game, to: 'main#guess'



4. Name three rails generator commands. What is created by each?

  Your answer: rails g resource does all of them for you so it creates the model, controller, then just run db:create

  Researched answer:
  rails generate
  rails db:migrate
  rails db:create



5. Consider the Rails routes below. Describe the responsibility of each route.

/users        method="GET"
<!-- displays list of users -->
/users/1      method="GET"
<!-- shows info on 1 users -->
/users/new    method="GET"
<!-- show form to make new blog -->
/users/       method="POST"
  <!-- add new user to database -->
/users/1      method="PUT"
<!-- updates user 1 -->
/users/1      method="DELETE"
<!-- deletes users 1 -->