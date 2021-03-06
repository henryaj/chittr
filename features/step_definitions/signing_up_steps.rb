When(/^I fill in and submit the signup form$/) do
	  fill_in "First Name", :with => "Henry"
	  fill_in "Last Name", :with => "Stanley"
	  fill_in "Email", :with => "henry@henrystanley.com"
	  fill_in "Username", :with => "henryaj"
	  fill_in "Password", :with => "12345"
	  fill_in "Password Confirmation", :with => "12345"
	  page.find(:link_or_button, 'submit')
    click_on 'submit'
end

When(/^I fill in and submit the signup form with non\-matching passwords$/) do
  fill_in "First Name", :with => "Henry"
  fill_in "Last Name", :with => "Stanley"
  fill_in "Email", :with => "henry@henrystanley"
  fill_in "Password", :with => "party!"
  fill_in "Password Confirmation", :with => "12345"
  page.find(:link_or_button, 'submit')
  click_on 'submit'
end