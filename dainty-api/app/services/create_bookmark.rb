class CreateBookmark
  attr_reader :bookmark
  def initialize data
    @data = data
  end

  def create
    @bookmark = Bookmark.new @data
    @bookmark.save
  end
end
