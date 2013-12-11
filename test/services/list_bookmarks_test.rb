require "test_helper"
require "minitest/spec"

describe ListBookmarks do
  it "retrieves the list of bookmarks" do
    assert_kind_of Array, ListBookmarks.list
  end
end
