require "services/base"
require "services/list"
require "services/create"
require "models/bookmark"

class App < Sinatra::Base
  get "/main.css" do
    sass :main
  end

  get "/" do
    service = ListBookmarks.new
    @bookmarks = service.list

    haml :index
  end

  post "/bookmarks" do
    service = CreateBookmark.new params[:bookmark]
    if service.create
      redirect "/"
    else
      halt 422
    end
  end
end
