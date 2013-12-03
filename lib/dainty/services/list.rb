module Dainty
  module Services
    class List
      def list
        list = parse content
        list.map { |item| Bookmark.new item["title"], item["url"] }
      end

      private

      def parse content
        JSON.parse content
      end

      def content
        Net::HTTP.get URI("http://localhost:3000/bookmarks")
      end
    end
  end
end
