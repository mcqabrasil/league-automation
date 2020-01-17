# frozen_string_literal: true
require_relative '../app/assertions/header_assert'
require_relative '../app/pages/page methods/header_met'
require_relative '../app/pages/page methods/rewards_met'
require_relative '../app/pages/page methods/login_met'

describe 'Header behaviors verification' do
  before do
    @header = HeaderMethods.new
    @header_as = HeaderAssertion.new
    @reward = RewardsMethods.new
    @logon = LoginMethods.new

    visit '/'
  end

  context "Header functions verification", :LM_38_03 do
    it 'Click on the Rewards Points', :step_1 do
      @header.open_rewards_flyout
      @header_as.assert_rewards_flyout_opened
      @reward.close_reward_modal
    end

    it 'Click on Currency selector', :step_2 do
      @header.click_currency_selector
      @header_as.assert_currency_options
    end

    it 'Click My Account link', :step_3 do
      @header.click_my_account
      @logon.login('akratz@mcfadyen.com', 'Admin123') # info provisória
      @header.click_my_account
      @header_as.assert_url_ison_my_account
    end

    it 'Click basket icon', :step_4 do
      @header.click_basket_cart
      @header_as.assert_url_ison_cart
    end

    it 'Check Cart icon quantity', :step_5 do
      # missing to check step 5 after development complete
    end
  end
end
