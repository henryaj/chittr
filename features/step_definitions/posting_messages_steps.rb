Then(/^I should see a large text box$/) do
  expect(page).to have_css('textarea')
end

Given(/^I am a logged in user$/) do
  step('I have signed up')
  step('I have signed in')
  step('I am on the home page')
end

When(/^I click "(.*?)"$/) do |arg1|
	page.find(:link_or_button, 'submit')
	  click_on 'submit'
end
