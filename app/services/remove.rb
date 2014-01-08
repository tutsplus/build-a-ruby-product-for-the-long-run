class RemoveBookmark < Service
  attr_reader :id, :data
  def initialize id
    @id = id
  end

  def remove
    req = request "/bookmarks/#{id}", :delete
    req.code.to_i
  end
end
