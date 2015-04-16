require "minitest_helper"
require "dainty/services/list"
require "dainty/bookmark"

require "httparty"
require "json"

module Dainty::Services
  describe List do
    it "retrieves a list" do
      List.new.list.must_be_kind_of Array
    end

    it "retrieves a list of bookmarks" do
      List.new.list.first.must_be_kind_of Bookmark
    end
  end
end
