# frozen_string_literal: true

require_relative 'base_page'
require_relative 'components/header_component'

class BasePageWithHeader < BasePage

  def initialize()
    @header = HeaderComponent.new
  end

  attr_reader :header

end