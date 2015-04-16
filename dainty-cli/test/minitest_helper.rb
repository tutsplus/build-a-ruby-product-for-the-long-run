$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'dainty'

require 'minitest/autorun'

module MiniTest
  class Test
    def self.test name, &block
      define_method "test_" + underscore_string(name), &block
    end

    private

    def self.underscore_string name
      name.gsub "\s", "_"
    end
  end
end
