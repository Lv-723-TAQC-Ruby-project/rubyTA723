# frozen_string_literal: true
require_relative '../base_page_with_header'

class SearchPage < BasePageWithHeader
  element :sort_dropdown, :xpath, "//span[contains(text(),'Best Match')]"
  element :sort_ending_soonest, :xpath, "//span[normalize-space()='Time: ending soonest']"
  elements :time_ending, :xpath, "//span[@class='s-item__time-end']"

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

end