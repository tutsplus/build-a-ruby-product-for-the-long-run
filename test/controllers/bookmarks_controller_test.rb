require 'test_helper'

class BookmarksControllerTest < ActionController::TestCase
  test "return ok status if bookmark is created" do
    post :create, bookmark: { title: "Tuts+", url: "http://tutsplus.com" }

    assert_response 201
  end

  test "returns not ok status if bookmark is not created" do
    post :create, bookmark: {}

    assert_response 422
  end

  test "returns ok if a record is updated" do
    bookmark = Bookmark.create! ({ title: "Tuts+", url: "http://tutsplus.com" })
    put :update, id: bookmark.id, bookmark: { title: "Net Tuts" }

    assert_response 204 # No Content
  end
end
