# frozen_string_literal: true
require_relative '../app/assertions/pdp'
require_relative '../app/pages/page methods/plp_methods'
require_relative '../app/pages/page methods/pdp_methods'
require_relative '../app/pages/page methods/header_methods'

describe 'PDP page verification' do
  it 'Adding a product to cart' do
    @plp = PLPMethods.new
    @pdp = PDPMethods.new
    @header = HeaderMethods.new
    @pdp_as = PDPAssertion.new

    visit '/'

    @header.click_catalog_link
    @plp.click_product_item(3)
    sleep 3
    @pdp.click_add_to_cart_btn

    @pdp_as.assert_product_added_cart

  end
end