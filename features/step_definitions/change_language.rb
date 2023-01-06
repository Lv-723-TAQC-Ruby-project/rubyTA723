

When('I open section of languages') do
  @home_page.click_section_of_languages_button
  sleep(1)
end

When('I select Germany language') do
  @home_page.click_German_language_button
end

When('I expect to see {string} in browser title') do |title|
  expect(page.title).to include title
end