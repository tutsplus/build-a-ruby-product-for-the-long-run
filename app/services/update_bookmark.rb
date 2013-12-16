class UpdateBookmark
  attr_reader :bookmark

  def initialize id, data
    @id = id
    @data = data
  end

  def update
    begin
      @bookmark = Bookmark.find @id
      @bookmark.update_attributes @data
    rescue
      false
    end
  end
end
