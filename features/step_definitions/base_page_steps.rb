# frozen_string_literal: true

When('I expect to see {string} in browser title') do |title|
  expect(page.title).to include title
end
