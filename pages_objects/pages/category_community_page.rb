# frozen_string_literal: true

class CategoryCommunityPage < BasePageWithHeader
  element :key_word_field, "input[name='messageSearchField']"
  element :search_button, "input[name='submitContext'] "
<<<<<<< HEAD
  # element :start_conversation_button, "a[class='lia-button lia-button-primary']", match: :first
  element :start_conversation_button, xpath:"//html/body/div[2]/center/div[1]/div/div/div/div[1]/div[3]/div[2]/div/div[2]/div/div[2]/div/div[2]/div/div/p/a"
  element :seller_news_popup_button,"//a[text()='Seller News']"
  element :announcements_button, "a[data-sp='m571.l2913']"
=======
  element :start_conversation_button, "a[class='lia-button lia-button-primary']", match: :first
  element :seller_news_popup_button, "//a[text()='Seller News']"
>>>>>>> 961cf97ce60dcaadc83121438b9ba7bc24408c56

  def type_key_word_field(key_word)
    key_word_field.set(key_word)
  end

  def click_search_button
    search_button.click
  end

  def click_start_conversation_button
    sleep(10)
    start_conversation_button.click
  end

  def click_seller_news_popup_button
    seller_news_popup_button.click
    sleep(2)
  end

  def select_announcements
    click_button('Announcements')
  end
<<<<<<< HEAD

  def click_announcements_button
    sleep(5)
    announcements_button.click
  end



=======
>>>>>>> 961cf97ce60dcaadc83121438b9ba7bc24408c56
end
