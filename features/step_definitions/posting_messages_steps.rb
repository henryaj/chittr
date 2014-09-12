Then(/^I should see a large text box$/) do
  expect(page).to have_css('textarea')
end