# frozen_string_literal: true

require_relative '../base_page_with_header'
class ItemToBuyPage < BasePageWithHeader
  set_url "itm/383791923777"
  element :color_type, :xpath, "//select[@id='x-msku__select-box-1000']"
  element :color_choose, :xpath, "//option[@id='x-msku__option-box-0']"
  element :capacity, :xpath, "//select[@id='x-msku__select-box-1001']"
  element :capacity_choose, :xpath, "//option[@id='x-msku__option-box-2']"
  element :buy_item, :xpath, "//a[@href='https://pay.ebay.com/rxo?action=create&rypsvc=true&pagename=ryp&item=383791923777&quantity=0&TransactionId=-1']"

  def color_select
    color_type.click
  end

  def color_chosen
    color_choose.click
  end

  def capacity_select
    capacity.click
  end

  def capacity_chosen
    capacity_choose.click
  end

  def buy_item_click
    buy_item.click
  end
end
