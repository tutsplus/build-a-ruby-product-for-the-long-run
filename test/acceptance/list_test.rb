require "minitest_helper"

describe "The whole app" do
  let(:path)    { File.join Dir.pwd, "bin/dainty" }
  let(:command) { "ruby -Ilib #{path} list" }

  before do
    output = %x(#{command})
  end

  it "prints a list of bookmarks" do
    output = %x(#{command})
    output.must_include "Tuts+ Premium"
    output.must_include "http://tutsplus.com"
  end
end
