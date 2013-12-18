class BookmarksController < ApplicationController
  def index
    @bookmarks = ListBookmarks.list
    render json: @bookmarks.to_json
  end

  def create
    @service = CreateBookmark.new(params[:bookmark])
    
    if @service.create
      render json: @service.bookmark, status: 201
    else
      head 422
    end
  end

  def update
    service = UpdateBookmark.new(params[:id], params[:bookmark])

    if service.update
      head 204
    else
      head 422
    end
  end

  def destroy
    service = RemoveBookmark.new id: params[:id]

    if service.remove
      head 204
    else
      head 422
    end
  end
end
