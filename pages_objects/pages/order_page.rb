# frozen_string_literal: true
require_relative '../base_page_with_header'
class OrderPage < BasePageWithHeader
  element :country_field, :xpath, "//select[@name = 'countryId']"
  element :chosen_country, :xpath, "//option[@value='209']"
  element :address1_field, :xpath, "//input[@name='address1']"
  element :address2_field, :xpath, "//input[@name='address2']"
  element :city_field, :xpath, "//input[@name='city']"
  element :state_field, :xpath, "//input[@name='state']"
  element :postal_code_field, :xpath, "//input[@name='zip']"
  element :phone_number_field, :xpath, "//input[@name='phoneFlagComp1']"
  element :continue_button, :xpath, "//input[@id='sbtBtn']"
  element :error_message, :xpath, "//p[@id='ertx']"
def select_country
  country_field.click
end
  def country_click
    chosen_country.click
  end
  def enter_address1(text)
    address1_field.set(text)
  end
  def enter_address2(text)
    address2_field.set(text)
  end
  def enter_city(text)
    city_field.set(text)
  end
  def enter_state(text)
    state_field.set(text)
  end
  def enter_postal_code(text)
    postal_code_field.set(text)
  end
  def enter_phone(text)
    phone_number_field.set(text)
  end
  def continue_click
    continue_button.click
  end
end
