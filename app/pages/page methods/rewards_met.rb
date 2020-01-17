require_relative '../rewards_page'

class RewardsMethods < RewardsPage
  include Capybara::DSL
  include RSpec::Matchers

  def flyout_opened?
    has_css?(FLYOUT_MODAL)
  end

  def close_reward_modal
    find(:dt, CLOSE_MODAL).click
  end
end