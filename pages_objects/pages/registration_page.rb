# frozen_string_literal: true

require_relative '../base_page_with_header'

class RegistrationPage < BasePageWithHeader
  element :first_name, "input[id='firstname']"
  element :last_name, "input[id='lastname']"
  element :user_email, "input[id='Email']"
  element :user_password, "input[id='password']"

  def enter_first_name(text)
    first_name.set(text)
  end

  def enter_last_name(text)
    last_name.set(text)
  end

  def enter_email(text)
    user_email.set(text)
  end

  def enter_password(text)
    user_password.set(text)
  end
end
