require_relative '../base_page'

class SearchTipsPage < BasePage
  element :page_title, :xpath, "//span[@class='pagetitle']"
end
