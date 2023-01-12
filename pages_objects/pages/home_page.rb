# frozen_string_literal: true

require_relative '../base_page_with_header'

class HomePage < BasePageWithHeader
  set_url ''
  element :category_community_button, "a[href='https://community.ebay.com'][class='gf-bttl thrd']"
  element :section_of_languages_button_element, "a[id='gf-fbtn']"
  element :watchlist, :xpath, "//a[@href= 'https://www.ebay.com/mye/myebay/watchlist']"
  element :item_watchlist, :xpath, "//img[@src='https://i.ebayimg.com/thumbs/images/g/XDUAAOSwQbVhTrRA/s-l225.jpg']"
  element :search_button, :xpath, "//*[@id='gh-btn']"
  def click_category_community_button
    sleep(8)
    category_community_button.click
  end

  def click_section_of_languages_button
    section_of_languages_button_element.click
  end

  def click_language_button(language)
    find(:xpath, "//*[text()='#{language}']").click
  end

  def watchlist_click
    watchlist.click
  end

  def item_from_watchlist_click
    item_watchlist.click
  end
  
  def click_search_button
    search_button.click
  end
end
