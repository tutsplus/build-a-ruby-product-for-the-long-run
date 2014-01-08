class App < Sinatra::Base
  get "/main.css" do
    sass :main
  end

  get "/" do
    response = HTTParty.get "http://localhost:3000/bookmarks"
    @bookmarks = response["bookmarks"].map { |b| OpenStruct.new b }
    haml :index
  end
end
