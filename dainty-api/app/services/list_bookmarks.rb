##
# This class allows users to list all of their bookmarks. It consists of a
# single method that retrieves an array of {Bookmark} objects.
#
class ListBookmarks
  ##
  # The main method of the service. Retrieves a list of bookmarks.
  #
  # @return Array
  def self.list
    Bookmark.all.to_a
  end
end
