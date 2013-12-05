require "minitest_helper"
require "dainty/services/update"

require "httparty"
require "json"

module Dainty::Services
  describe Update do
    it "creates a bookmark" do
      id = 2
      options = { title: "Jose Mota - Homepage", url: "http://www.josemota.net" }
      Update.new(id, options).update.must_equal 204
    end
  end
end
