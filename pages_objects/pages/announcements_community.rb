# frozen_string_literal: true

class AnnouncementsCommunity< BasePageWithHeader
  element :subscribe_button,"button[id='custom-node-subscribe']"
  def click_subscribe_button
    subscribe_button.click
  end


end
