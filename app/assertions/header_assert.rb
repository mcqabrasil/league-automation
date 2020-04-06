# frozen_string_literal: true
require_relative '../app/pages/page methods/header_met'
require_relative '../app/pages/page methods/rewards_met'



class HeaderAssertion
  include Capybara::DSL
  include RSpec::Matchers

  def initialize
    @header = HeaderMethods.new
    @rewards = RewardsMethods.new
  end

  # Assertion methods
  def assert_rewards_flyout_opened
    if @rewards.flyout_opened?
      puts 'Rewards Flyout is opened'
    else
      expect { raise 'oops' }.to raise_error('Rewards flyout is not present')
    end
  end

  def assert_currency_options
    currency = @header.get_currency_options.split
    options = %w[CAD USD]
    expect(currency).to match_array(options)
  end

  def assert_url_ison_my_account
    expect(page).to have_current_path('https://league-dev.myshopify.com/account', ignore_query: true)
  end

  def assert_url_ison_cart
    expect(page).to have_current_path('https://league-dev.myshopify.com/cart')
  end
end
