# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project: 
    rails new
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
    Choir Member has many practice times
    Choir Leader has many practice times
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
    Practice time belongs to choir member
    Practice time belongs to choir leader
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
    Choir member has many choir leaders through practice times
    Choir leader has many choir members through practice times
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
    See above
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
    Practice times has multiple submittable attributes: language, time (datetime), hymns.
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
    Validations included for all three models
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
    Two class level scope methods used in practice time model.
- [x] Include signup
    Sign up for choir members
- [x] Include login
    Login for choir members and choir leaders
- [x] Include logout
    Logout button clears session
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
    Choir members can sign up with google login.
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
    Nested route i.e. choir_leader/1/practice_times
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
    Nested route i.e. choir_leader/1/practice_times/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
    Validation errors display on both new and edit views

Confirm:
- [x] The application is pretty DRY
    Refactored code in controller, views(partials), models (shared validations)
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
    Helper methods used to display certain links/buttons
- [x] Views use partials if appropriate
    Partials used where necessary
