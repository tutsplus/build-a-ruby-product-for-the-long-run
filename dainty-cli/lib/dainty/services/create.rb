module Dainty
  module Services
    class Create
      attr_reader :data
      def initialize data
        @data = data
      end

      def create
        req = HTTParty.post "http://localhost:3000/bookmarks", body: post_data
        req.code.to_i
      end

      def post_data
        { bookmark: data }
      end

    end
  end
end
