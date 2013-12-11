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
end
