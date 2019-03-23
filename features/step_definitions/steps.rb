require 'capybara/cucumber'
require 'capybara/node/matchers'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Given("I am able to access magento webpage") do
  @session = Capybara::Session.new(:selenium)
  @session.visit("http://magento.com")
end

And("I am able to navigate onto login page") do
  @session.find(class: "fa-user").click
end

When("I update the username as {string}") do |string|
  @session.fill_in("email", with: string)
end

And("I update the password as {string}") do |string|
  @session.fill_in("pass", with: string)
end

And("I click on login button") do
  @session.click_button("send2")
end

Then("I should get the the magento ID as {string}") do |string|
  #@session.assert_text(string)
end

Then("I should get the error message as {string}") do |string|
  #@session.assert_text(string)
end
