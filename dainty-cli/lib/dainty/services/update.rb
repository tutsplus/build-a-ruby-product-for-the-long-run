module Dainty
  module Services
    class Update
      attr_reader :id, :data
      def initialize id, data
        @id = id
        @data = data
      end

      def update
        req = HTTParty.put "http://localhost:3000/bookmarks/#{id}", body: post_data
        req.code.to_i
      end

      def post_data
        { bookmark: data }
      end

    end
  end
end
