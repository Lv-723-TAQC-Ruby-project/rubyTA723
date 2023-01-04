# frozen_string_literal: true

require_relative 'base_section'
require_relative 'sections/components/header_component'

class BasePageWithHeader < SitePrism::Page

  section :header, HeaderComponent, "header[id = 'gh']"

end