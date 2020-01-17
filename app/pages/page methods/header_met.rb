require_relative '../header_page'

class HeaderMethods < HeaderPage
  include Capybara::DSL
  include RSpec::Matchers

  def open_rewards_flyout
    find(:dt, OPEN_REWARDS_BTN).click
  end

  def click_my_account
    find(:dt, MY_ACCOUNT_LINK).click
  end

  def click_basket_cart
    find(:dt, CART_LINK).click
  end

  def do_search(content)
    fill_in SEARCH_FLD, with: content
    find(:nm, SEARCH_FLD).send_keys :enter
  end

  def click_currency_selector
    find(:dt, CURRENCY_DD).click
  end

  def get_currency_qty_options
    all(:dt, CURRENCY_DD).count
  end

  def get_currency_options
    find(:dt, CURRENCY_DD).text
  end
end
