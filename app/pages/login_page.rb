# frozen_string_literal: true

class LoginPage
  include Capybara::DSL

  # FIELDS
  EMAIL_FLD = 'customer[email]'
  PASSWORD_FLD = 'customer[password]'
  
  # BUTTONS
  LOGIN_BTN = '//*[@id="customer_login"]/div[3]/input' # TO BE MODIFIED
end
