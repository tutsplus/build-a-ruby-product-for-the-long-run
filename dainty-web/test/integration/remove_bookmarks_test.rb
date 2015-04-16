require "test_helper"

describe "Removing a bookmark" do
  it "removes a bookmark" do
    bookmark = spawn_bookmark
    visit "/"
    page.find("#bookmark-#{bookmark.id}").click_button "Delete"

    page.wont_have_content bookmark.title
  end
end
