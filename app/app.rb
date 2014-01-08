require "services/list"
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
end
