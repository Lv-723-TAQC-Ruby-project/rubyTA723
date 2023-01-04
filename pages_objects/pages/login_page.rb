# frozen_string_literal: true

require_relative '../base_page_with_header'

class LoginPage < BasePageWithHeader
  set_url "/signin"

  element :username_field, "input[name='userid']"
  element :password_field, "input[name='pass']"
  element :continue_button, "button[id='signin-continue-btn']"
  element :login_button, "button[id='sgnBt']"

  def login(email, password)
    text_found = false

    while !text_found
      if page.has_text?("Hello")
        text_found = true
      else
        sleep 1
      end
    end
    username_field.set(email)
    continue_button.click

    password_field.set(password)
    login_button.click

    if has_text?("Tired of passwords?\nDepending on your device, you can sign in with your fingerprint, face, or PIN.\nTurn on\nMaybe later\n\nDon't ask me again\nCopyright © 1995-2023 eBay Inc. All Rights Reserved. Accessibility, User Agreement, Privacy, Payments Terms of Use, Cookies, Do not sell my personal information and AdChoice")
      click_on("Don't ask me again")
    end
  end
end
