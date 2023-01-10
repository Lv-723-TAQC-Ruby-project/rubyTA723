# frozen_string_literal: true

When('I open section of languages') do
  @home_page.click_section_of_languages_button
  sleep(1)
end

When('I select {string}') do |name|
  @home_page.click_language_button(name)
end

When('I expect to see {string} in browser title') do |title|
  expect(page.title).to include title
end
