require "test_helper"
require "minitest/spec"

describe UpdateBookmark do
  it "updates a bookmark" do
    bookmark = Bookmark.create! title: "Tuts+", url: "http://tutsplus.com"
    service = UpdateBookmark.new(bookmark.id, {
                                   title: "Net Tuts",
                                   url: "http://net.tutsplus.com"})

    service.update
    service.bookmark.title.must_equal "Net Tuts"
    service.bookmark.url.must_equal "http://net.tutsplus.com"
  end

  it "fails to update a bookmark if there's no id" do
    refute UpdateBookmark.new(nil, {}).update
  end
end
