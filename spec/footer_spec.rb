require_relative '../app/pages/page methods/mega-menu_met'
require_relative '../app/assertions/footer_assert'


describe '', :LEAGUE76 do
  before(:all) do
    @logon = LoginMethods.new
    visit '/'
    @header.click_my_account
    @logon.login('akratz@mcfadyen.com', 'Admin123') # info provisória
    visit '/'
    @footer_as = FooterAssertions.new
  end

  after(:each) do
    page.instance_variable_set(:@touched, false)
  end

  after(:all) do
    page.instance_variable_set(:@touched, true)
    page.reset!
  end

  context "Verify Footer links functionalities", :LEAGUE76_step1 do
    it 'User is redirected to the "Shipping & Payment" informations page', :step_1 do
      @footer_as.assert_shipping_link_works
    end
    it 'User is redirected to the "Returns" informations works', :step2 do
      @footer_as.assert_returns_link_works
    end
    it 'User is redirected to the "Terms and Conditions" informations page', :step3 do
      @footer_as.assert_terms_cond_link_works
    end
    it 'User is redirected to the "Privacy" informations page', :step4 do
      @footer_as.assert_privacy_link_works
    end
    it 'User is redirected to the "Contact Us" informations page', :step5 do
      @footer_as.assert_contact_us_link_works
    end

  end
end
