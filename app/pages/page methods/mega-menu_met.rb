require_relative '../mega-menu_page'

class MegaMenuMethods < MegaMenuPage
  include Capybara::DSL
  include RSpec::Matchers

  def hover_menu(index)
    all(:dt, MENU_LINK)[index].hover
  end

  def click_sub_category(index)
    all(:dt, SUB_MENU_LINK)[index].click
  end

  def click_shop_all_link
    find(:dt, SHOP_ALL_LINK).click
  end

  def click_fourth_column_link
    find(:dt, FOURTH_COLUMN_LINK).click
  end
end