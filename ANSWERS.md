# Q0: Why are these two errors being thrown?
    Rails checked the database schema and saw a mismatch due to a migration file that had
    not been run, so it threw the migration pending error. The uninitialized constant error
    was thrown because the Pokemon model had not been created yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the
  possible Pokemon that appear? *
    The HomeController gives a randomly selected Pokemon to the view. These Pokemon
    came from seeds.rb. These Pokemon do not have a trainer.

# Question 2: What does the following line do "<%= button_to "Throw a Pokeball!",
  capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific
  about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the
  Help section in the README.
    The line creates an HTML button. When the user clicks it, it sends a PATCH request to
    capture_path, which is a name for the route to the pokemons#capture method. id: @pokemon
    is the parameter for the capture method.

# Question 3: What would you name your own Pokemon?
    Noodle.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path
  need? If it is not a path, why is it okay not to have a path here?
    I redirected to the trainer_path route with the parameter trainer_id. It is fine not to
    have a path because if given a model object, Rails can route to the show view for the model.

# Question 5: Explain how putting this line "flash[:error] =
  @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
    application.html.erb renders on every view in the application. If applicable, layouts/
    _messages.html.erb displays error messages in the hash `flash`, which is a temporary
    variable for one request.
