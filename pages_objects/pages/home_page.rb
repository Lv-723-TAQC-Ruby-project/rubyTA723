# frozen_string_literal: true

require_relative '../base_page_with_header'

class HomePage < BasePageWithHeader
  set_url "/"

  element :category_community_button, "a[href='https://community.ebay.com'][class='gf-bttl thrd']"

  def click_category_community_button
    category_community_button.click
  end




end

