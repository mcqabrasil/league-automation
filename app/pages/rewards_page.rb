# frozen_string_literal: true

class RewardsPage
  include Capybara::DSL

  # MODALS
  FLYOUT_MODAL = '.opened .league-rewards-container' # CSS

  # BUTTONS
  CLOSE_MODAL = 'button-close-rewards'
end
