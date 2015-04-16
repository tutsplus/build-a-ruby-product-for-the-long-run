require "terminal-table"
module Dainty
  module Renderers
    class Table
      attr_reader :bookmarks, :stream
      def initialize bookmarks, options
        @bookmarks = bookmarks
        @stream = options[:stream] || $stdout
      end

      def render
        table = Terminal::Table.new rows: rows
        stream.puts table
      end

      private

      def rows
        bookmarks.map do |bookmark|
          [ bookmark.title, bookmark.url ]
        end
      end
    end
  end
end
