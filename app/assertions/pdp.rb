# frozen_string_literal: true

class PDPAssertion
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @plp = PLPMethods.new
    @pdp = PDPMethods.new
    @header = HeaderMethods.new
  end

  # Assertion methods
  def assert_product_added_cart
    if @pdp.has_prod_added_cart_popup?
      puts 'Product was added to the cart'
    else
      expect { raise 'oops' }.to raise_error('Product was not added to cart as expected')
    end
  end
end
