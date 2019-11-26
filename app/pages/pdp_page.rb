# frozen_string_literal: true

class PDPPage
  include Capybara::DSL

  ADD_TO_CART_BTN = '#ProductSection-product-template .product-form__cart-submit'
  CART_POP_UP = '#CartPopupHeading'
end