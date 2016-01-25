1.  Add rspec-rails to your Gemfile in the development and test groups. We'll also go ahead and add ffaker and factory_girl_rails:

```ruby
#
# Gemfile
#
group :development, :test do
  gem 'rspec-rails'
  gem 'ffaker'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end
```

2.  Run `bundle` install to add the new gems to your project:

```bash
$ bundle
```

3.  Create the `spec` folder and set up `rspec-rails` configuration:

```bash
$ rails g rspec:install
```

This creates a `spec` directory. It also adds the configuration files `spec/spec_helper.rb`, `spec/rails_helper.rb` and `.rspec`. See those files for more information.

4.  Configure your specs by going into the `.rspec` file and removing the line that says `--warnings` if there is one.

5.  For any existing models or controllers you'd like to test, you'll have to manually create spec files:

```bash
$ rails g rspec:model recipe
$ rails g rspec:controller recipes
```

**Note:** Spec files for any models or controllers you create AFTER you install `rspec-rails` will automatically be generated as long as you use `rails g ...` to create models/controllers.

6.  To run all test specs, you can type `rspec` or `bundle exec rspec` in the terminal. To run only a specific set of tests, type `rspec` and the file path for the tests you want to run:

```zsh
# run only model specs
rspec spec/models

# run only specs for `RecipesController`
rspec spec/controllers/recipes_controller_spec.rb

```
