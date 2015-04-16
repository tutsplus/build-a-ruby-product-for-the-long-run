class ListBookmarks
  def list
    response = HTTParty.get "http://localhost:3000/bookmarks"
    @bookmarks = response["bookmarks"].map do |b|
      Bookmark.new b["id"], b["title"], b["url"]
    end
  end
end
