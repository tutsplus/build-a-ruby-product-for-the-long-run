require "init"
require "minitest/autorun"
require "app"

Bundler.require :test
include Rack::Test::Methods

Capybara.app = App

class MiniTest::Spec
  include Capybara::DSL

  def spawn_bookmark
    time = Time.now.to_i
    options = { title: "Bookmark at #{time}", url: "http://www.twitter.com" }
    create_service = CreateBookmark.new options
    create_service.create

    create_service.bookmark
  end
end

