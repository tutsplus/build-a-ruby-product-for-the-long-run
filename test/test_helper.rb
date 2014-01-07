require "init"
require "minitest/autorun"
require "app"

Bundler.require :test
include Rack::Test::Methods

def app
  App
end
