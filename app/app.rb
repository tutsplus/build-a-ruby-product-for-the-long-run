class App < Sinatra::Base
  get "/" do
    @bookmarks = HTTParty.get "http://localhost:3000/bookmarks"
    haml :index
  end
end
