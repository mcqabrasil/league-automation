require_relative '../footer_page'

class FooterMethods < FooterPage
  include Capybara::DSL
  include RSpec::Matchers

    def click_shipping
        all(:dt, STATIC_LINK, text: 'Shipping & Payment').click
    end

    def click_returns
        all(:dt, STATIC_LINK, text: 'Returns').click
    end

    def click_tac
        all(:dt, STATIC_LINK, text: 'Terms and Conditions').click
    end

    def click_privacy
        all(:dt, STATIC_LINK, text: 'Privacy').click
    end

    def click_contact_us
        all(:dt, STATIC_LINK, text: 'Contact Us').click
    end

end