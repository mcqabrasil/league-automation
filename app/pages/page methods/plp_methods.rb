require_relative '../plp_page'

class PLPMethods < PLPPage
  include Capybara::DSL
  include RSpec::Matchers

  # Click methods
  def click_product_item(index)
   # puts index
   # puts PRODUCT_ITEM
   # puts all(:css, PRODUCT_ITEM).count
    all(:css, PRODUCT_ITEM)[index].click
  end
end