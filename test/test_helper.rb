require "init"
require "minitest/autorun"
require "app"

Bundler.require :test
include Rack::Test::Methods

Capybara.app = App

class MiniTest::Spec
  include Capybara::DSL
end
