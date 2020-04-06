# frozen_string_literal: true
require_relative '../app/pages/page methods/footer_met'

class FooterAssertion
    include Capybara::DSL
    include RSpec::Matchers
  
    def initialize
      @footer = FooterMethods.new
    end
  end


  def assert_shipping_link_works
    expect(page).to have_current_path('/pages/shipping-payments')
  end

  def assert_returns_link_works
    expect(page).to have_current_path('/pages/returns')
  end

  def assert_terms_cond_link_works
    expect(page).to have_current_path('/pages/terms-and-conditions')
  end

  def assert_privacy_link_works
    expect(page).to have_current_path('/pages/privacy')
  end

  def assert_contact_us_link_works
    expect(page).to have_current_path('/pages/contact-us')
  end
  

end