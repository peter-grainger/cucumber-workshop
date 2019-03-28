World UserHelper

Given('the user has been stored in the database') do
  @model = UserHelper.create_model
end

When('a request has been made to get a user') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/(.*) is returned/) do |_status|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/the response body (does not contain|contains) the user/) do |_status|
  expect(@reponse_body).to eq(@model)
end

Given('the wrong id is used for a user') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('the response body is empty') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('incorrect user token is used in the request') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('incorrect system token is used in the request') do
  pending # Write code here that turns the phrase above into concrete actions
end

Given('valid permissions token is used in the request') do
  pending # Write code here that turns the phrase above into concrete actions
end
