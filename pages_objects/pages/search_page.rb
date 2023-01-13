# frozen_string_literal: true
require_relative '../base_page_with_header'

class SearchPage < BasePageWithHeader
  element :sort_dropdown, :xpath, "//span[contains(text(),'Best Match')]"
  element :sort_ending_soonest, :xpath, "//span[normalize-space()='Time: ending soonest']"
  elements :time_ending, :xpath, "//span[@class='s-item__time-end']"
  element :product_rating_button, :xpath, "//span[contains(text(), 'product ratings')]", match: :first
  element :close_message_button,"button[class='srp-save-search__tooltip-close']"

  def click_sort_dropdown
    sort_dropdown.click
  end

  def select_sort_ending_soonest
    sort_ending_soonest.click
  end

  def check_if_sort_is_correct
    time_ending.each_cons(2) do |first, second|
      if Time.parse(first.text) < Time.parse(second.text)
        return true
      end
    end
    false
  end

  def click_product_rating_button
    product_rating_button.click
    sleep(2)
  end

  def click_close_message_button
    return unless page.has_text?("Not finding what you're looking for?")
    close_message_button.click
  end
end