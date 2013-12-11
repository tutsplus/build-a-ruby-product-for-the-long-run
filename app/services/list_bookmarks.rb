class ListBookmarks
  def self.list
    Bookmark.all.to_a
  end
end
