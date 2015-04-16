require "minitest_helper"
require "dainty/services/create"

require "httparty"
require "json"

module Dainty::Services
  describe Create do
    it "creates a bookmark" do
      options = { title: "Jose Mota", url: "http://josemota.net" }
      Create.new(options).create.must_equal 201
    end
  end
end
