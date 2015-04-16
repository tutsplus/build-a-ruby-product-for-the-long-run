require "test_helper"

describe "Creating a bookmark" do
  it "creates a bookmark" do
    time = Time.now.to_i

    visit "/"
    fill_in "Title", with: "Twitter #{time}"
    fill_in "URL", with: "twitter.com"
    click_button "Create bookmark"

    page.must_have_content "Twitter #{time}"
  end
end
