# frozen_string_literal: true

require_relative '../base_page_with_header'

class LoginPage < BasePageWithHeader
  set_url "/signin"

  element :username_field, "input[name='userid']"
  element :password_field, "input[name='pass']"
  element :continue_button, "button[id='signin-continue-btn']"
  element :login_button, "button[id='sgnBt']"

  def login(email, password)
    check_capcha

    username_field.set(email)
    continue_button.click

    password_field.set(password)
    login_button.click

    check_banner
  end

  def check_capcha
    while page.has_text?("Please verify yourself to continue")
      sleep 1
    end
  end

  def check_banner
    if page.has_text?("Tired of passwords?")
      click_on("Don't ask me again")
    end
  end
end
