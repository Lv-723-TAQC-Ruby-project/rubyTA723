# frozen_string_literal: true
require_relative '../base_page_with_header'

# TODO: Fix class methods
class MyEbay < BasePageWithHeader
  element :saved_searches, :xpath, "//a[@href = 'https://www.ebay.com/myb/SavedSearches']"
  # element :three_dots_button,  "id = 'nid-fkw-2'"
  # element :unsave_button, "'span', text: 'Unsave'"


  def click_saved_searches_button
    saved_searches.click
  end

  # def click_three_dots_button
  #   three_dots_button.click
  # end
  #
  # def click_unsave_button
  #   unsave_button.click
  # end

end
