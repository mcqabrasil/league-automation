# frozen_string_literal: true

class FooterAssertion
    include Capybara::DSL
    include RSpec::Matchers
  
    def initialize
      @footer = FooterMethods.new
      @login = LoginMethods.new
    end
  end


  def assert_shipping_link_works
    @footer.click_shipping
    expect(page).to have_current_path('/pages/shipping-payments')
  end

  def assert_returns_link_works
    @footer.click_returns
    expect(page).to have_current_path('/pages/returns')
  end

  def assert_terms_cond_link_works
    @footer.click_tac
    expect(page).to have_current_path('/pages/terms-and-conditions')
  end

  def assert_privacy_link_works
    @footer.click_privacy
    expect(page).to have_current_path('/pages/privacy')
  end

  def assert_contact_us_link_works
    @footer.click_contact_us
    expect(page).to have_current_path('/pages/contact-us')
  end
  

end