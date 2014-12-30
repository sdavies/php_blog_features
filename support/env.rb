require 'rspec/expectations'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'test/unit/assertions'
require 'pry'

#Capybara.register_driver :poltergeist do |app|
#  Capybara::Poltergeist::Driver.new(app, timeout: 60, js_errors: true)
#end

Capybara.configure do |config|
  config.run_server = false
  #config.default_driver = :selenium
  config.default_driver = :poltergeist
  config.app_host = "http://localhost"
end
World(Test::Unit::Assertions)
World(Capybara)
