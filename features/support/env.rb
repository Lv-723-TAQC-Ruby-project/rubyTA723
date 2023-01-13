require_relative '../../pages_objects/pages/registration_page'
require_relative '../../pages_objects/pages/order_page'
require_relative '../../pages_objects/pages/item_to_buy_page'
require_relative '../../pages_objects/pages/home_page'
require_relative '../../pages_objects/pages/advanced_search_page'
require_relative '../../pages_objects/pages/golf_equipment_page'
require_relative '../../pages_objects/pages/login_page'
require_relative '../../pages_objects/pages/category_community_page'
require_relative '../../pages_objects/pages/phone_page'
require_relative '../../pages_objects/pages/search_tips_hint_page'
require_relative '../../pages_objects/pages/advanced_search_options_page'
require_relative '../../pages_objects/pages/help_page'
require_relative '../../pages_objects/pages/search_page'
require_relative '../../pages_objects/pages/create_new_message_in_community'
require_relative '../../pages_objects/pages/announcements_community'
require_relative '../../pages_objects/pages/investors_page'

require "#{File.dirname(__FILE__)}/config/configuration"
BASE_URL = Configuration['base_url']
LOGIN = Configuration['login']
PASSWORD = Configuration['password']
FIRST_NAME = Configuration['first_name']
TOKEN = Configuration['token']
