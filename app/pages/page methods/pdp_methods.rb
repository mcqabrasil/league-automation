require_relative '../pdp_page'

class PDPMethods < PDPPage
  include Capybara::DSL
  include RSpec::Matchers

  # Click methods
  def click_add_to_cart_btn
    find(:css, ADD_TO_CART_BTN).click
  end

  def has_prod_added_cart_popup?
    has_css?(CART_POP_UP)
  end
end
