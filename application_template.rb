gem_group :development, :test do
  gem 'rspec-rails', '~> 5.0.0'
  gem 'factory_bot_rails'
  gem 'capybara'
  gem 'webdrivers'
  gem 'faker'
  gem 'rexml'
end

initializer 'generators.rb', <<-CODE
  Rails.application.config.generators do |g|
    g.test_framework :rspec,
      fixtures:         false,
      view_specs:       false,
      helper_specs:     false,
      routing_specs:    false,
      request_specs:    false,
      controller_specs: false
  end
CODE

after_bundle do
  generate 'rspec:install'
end
