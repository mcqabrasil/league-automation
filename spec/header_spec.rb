require_relative '../app/assertions/header_assert'
require_relative '../app/pages/page methods/header_met'
require_relative '../app/pages/page methods/rewards_met'
require_relative '../app/pages/page methods/login_met'

describe 'Header behaviors verification' do
  before(:all) do
    @header = HeaderMethods.new
    @header_as = HeaderAssertion.new
    @reward = RewardsMethods.new
    @logon = LoginMethods.new

    visit '/'
    @header.click_my_account
    @logon.login('akratz@mcfadyen.com', 'Admin123') # info provisória
  end

  after(:each) do
    page.instance_variable_set(:@touched, false)
  end

  after(:all) do
    page.instance_variable_set(:@touched, true)
    page.reset!
  end

  context "Header functions verification", :LEAGUE4 do
    it 'Click on the Rewards Points', :LM_38_03_step_1 do
      @header.open_rewards_flyout
      @header_as.assert_rewards_flyout_opened
      @reward.close_reward_modal
    end

    it 'Click on Currency selector', :LM_38_03_step_2 do
      @header.click_currency_selector
      @header_as.assert_currency_options
      puts 'step 2 funcionou'
    end

    it 'Click My Account link', :LM_38_03_step_3 do
      @header.click_my_account
      @header_as.assert_url_ison_my_account
      puts 'step 3 funcionou'
    end

    it 'Click basket icon', :LM_38_03_step_4 do
      @header.click_basket_cart
      @header_as.assert_url_ison_cart
      puts 'step 4 funcionou'
    end

    it 'Check Cart icon quantity', :LM_38_03_step_5 do
      # missing to check step 5 after development complete
    end
  end

  context "Search by valid data", :LEAGUE4 do

  end

  context "Search's suggestions verification", :LEAGUE40  do

  end

  context "Search autocorrection verfification", :LEAGUE41 do

  end

  context "Search with Special Characters", :LEAGUE38 do

  end
end
