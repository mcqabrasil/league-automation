# frozen_string_literal: true

require 'rspec/expectations'
require 'capybara'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'capybara/dsl'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
    config.include Capybara::DSL
    config.include Capybara::RSpecMatchers
  end

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL
end

Capybara.configure do |config|
  #    config.default_driver = :selenium_chrome
  config.app_host = 'https://league-dev.myshopify.com'
  #    config.default_max_wait_time = 15
end

@browser = ENV['BROWSER']

Capybara.configure do |config|
  @driver = case @browser
            when 'chrome'
              :selenium_chrome
            when 'firefox'
              :selenium
            when 'chrome_headless'
              :selenium_chrome_headless
            when 'firefox_headless'
              :selenium_headless
            end

  if @driver == :selenium
    puts 'Driver selected is Firefox'
    Capybara.register_driver :selenium do |app|
      caps = Selenium::WebDriver::Remote::Capabilities.new(acceptInsecureCerts: true)
      Capybara::Selenium::Driver.new(
        app,
        desired_capabilities: caps
      )
    end
    config.app_host = 'https://league-dev.myshopify.com'
    config.default_driver = :selenium
    config.javascript_driver = :selenium
    config.default_max_wait_time = 15
  elsif
    config.default_driver = @driver
    config.javascript_driver = @driver
    config.app_host = 'https://league-dev.myshopify.com'
    config.default_max_wait_time = 15
  end
end
