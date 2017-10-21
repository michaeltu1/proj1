# Q0: Why is this error being thrown?
There is no model for Pokemon yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The seed file created 4 pokemon. All of these pokemon don't have trainers, so the "Pokemon.where(trainer: nil)" can arbitrarily select any one of them.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The first part creates a button labeled "Throw a Pokeball". Capture_path goes to the capture method in the pokemon_controller.rb and makes sure that the id of the pokemon is in the params hash. Method refers to the type of request that this is -- i.e. a PATCH request.

# Question 3: What would you name your own Pokemon?
Ca'caw

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?


# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
