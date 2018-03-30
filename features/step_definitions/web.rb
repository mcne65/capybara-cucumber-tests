Given('I am on the {string} page') do |pageName|
   visit 'https://www.google.com/ncr'  
end

When("I enter the text {string} in the search textbox") do |text_to_search|
    page.find(:css, 'input[type="text"]').set(text_to_search)
end

When("click on the {string} button") do |button_text|
    page.find(:css,'input[value="'+"#{button_text}"+'"]').click()
end

Then("I should be redirected to the results page") do
  expect(page).to have_current_path('/search', :url=> false, :ignore_query=>true)
end