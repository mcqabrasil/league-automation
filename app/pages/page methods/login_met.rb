require_relative '../login_page'

class LoginMethods < LoginPage
  include Capybara::DSL
  include RSpec::Matchers

  def login(email, password)
    fill_in EMAIL_FLD, with: email
    fill_in PASSWORD_FLD, with: password
    find(:xpath, LOGIN_BTN).click
  end
end