class RemoveBookmark
  def initialize data
    @id = data[:id]
  end

  def remove
    bookmark = Bookmark.find @id
    bookmark.destroy.destroyed?
  end
end
