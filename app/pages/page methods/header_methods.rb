require_relative '../header_page'

class HeaderMethods < HeaderPage
  include Capybara::DSL
  include RSpec::Matchers

  # Click methods
  def click_catalog_link
    find(:xpath, CATALOG_LINK).click
  end
end
