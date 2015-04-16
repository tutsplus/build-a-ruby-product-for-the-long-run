module Dainty
  module Renderers
    class OrderedList
      attr_reader :bookmarks, :stream
      def initialize bookmarks, options
        @bookmarks = bookmarks
        @stream = options[:stream] || $stdout
      end

      def render
        bookmarks.each_with_index do |bookmark, index|
          stream.puts "#{index}. #{bookmark.title}, #{bookmark.url}"
        end
      end
    end
  end
end
