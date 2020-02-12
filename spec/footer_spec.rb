require_relative '../app/pages/page methods/mega-menu_met'


describe '', :LEAGUE76 do
  before(:all) do
    @logon = LoginMethods.new
    visit '/'
    @header.click_my_account
    @logon.login('akratz@mcfadyen.com', 'Admin123') # info provisória
    visit '/'
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
 
    end

  end
end
