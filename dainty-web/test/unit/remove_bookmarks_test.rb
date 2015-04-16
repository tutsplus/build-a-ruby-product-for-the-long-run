require "test_helper"

describe RemoveBookmark do
  it "creates a bookmark" do
    time = Time.now.to_i
    options = { title: "Bookmark at #{time}", url: "http://www.twitter.com" }
    create_service = CreateBookmark.new options
    create_service.create

    id = create_service.bookmark.id
    RemoveBookmark.new(id).remove.must_equal 204
  end
end
