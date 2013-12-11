class BookmarksController < ApplicationController
  def index
    @bookmarks = ListBookmarks.list
    render json: @bookmarks.to_json
  end

  def create
  end
end
