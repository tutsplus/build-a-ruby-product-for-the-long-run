require "test_helper"

describe CreateBookmark do
  it "creates a bookmark" do
    options = { title: "Jose Mota", url: "http://josemota.net" }
    CreateBookmark.new(options).create.must_equal 201
  end
end
