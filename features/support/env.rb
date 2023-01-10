# frozen_string_literal: true

require_relative '../../pages_objects/pages/home_page'
require_relative '../../pages_objects/pages/advanced_search_page'
require_relative '../../pages_objects/pages/golf_equipment_page'
require_relative '../../pages_objects/pages/login_page'
require_relative '../../pages_objects/pages/category_community_page'
require_relative '../../pages_objects/pages/phone_page'
require_relative '../../pages_objects/pages/search_tips_hint_page'
require_relative '../../pages_objects/pages/advanced_search_options_page'

require "#{File.dirname(__FILE__)}/config/configuration"
BASE_URL = Configuration['base_url']
LOGIN = Configuration['login']
PASSWORD = Configuration['password']
FIRST_NAME = Configuration['first_name']
