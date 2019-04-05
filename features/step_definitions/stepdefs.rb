World UserHelper

Given("a user is in the database") do
  @user = UserHelper.user
end

When("a request is made to get a user") do
  httpHelper.get("/user/#{@user.user_id}/business/#{@user.business_id}")
end

Then("OK is returned") do
end

Then("the response body contains a user") do
end

Given(/the (UserID|BusinessID) is (.*)/) do | any_value, isCorrect | 
    puts any_value
    puts isCorrect
  end
  
  Then("not found is returned") do
  end