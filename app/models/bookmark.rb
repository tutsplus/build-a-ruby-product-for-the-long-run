class Bookmark
  attr_reader :id, :title, :url

  def initialize id, title, url
    @id = id
    @title = title
    @url = url
  end
end
