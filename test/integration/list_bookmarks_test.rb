require "test_helper"

describe "Listing bookmarks" do
  it "prints out a list of bookmarks" do
    visit "/"

    page.must_have_selector "li.bookmark"
  end
end
