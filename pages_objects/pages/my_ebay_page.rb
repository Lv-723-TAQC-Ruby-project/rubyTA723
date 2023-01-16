# frozen_string_literal: true

require_relative '../base_page_with_header'


class MyEbay < BasePageWithHeader
  element :saved_searches, :xpath, "//a[@href = 'https://www.ebay.com/myb/SavedSearches']"


  def click_saved_searches_button
    saved_searches.click
  end

end
