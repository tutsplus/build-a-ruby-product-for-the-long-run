require "minitest_helper"

describe "The whole app - Creating" do
  let(:path)    { File.join Dir.pwd, "bin/dainty" }
  let(:command) { "ruby -Ilib #{path} create 'Net Tuts' 'http://net.tutsplus.com'" }

  it "creates a bookmark" do
    output = %x(#{command})
    output.must_include "Net Tuts (http://net.tutsplus.com) was bookmarked."
  end
end
