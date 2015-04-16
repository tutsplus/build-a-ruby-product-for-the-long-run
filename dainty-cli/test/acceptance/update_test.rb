require "minitest_helper"

describe "The whole app - Updating" do
  let(:path)    { File.join Dir.pwd, "bin/dainty" }
  let(:command) { "ruby -Ilib #{path} update --id 3 --title 'Jose Mota - Homepage' --url 'http://www.josemota.net/'" }

  it "creates a bookmark" do
    output = %x(#{command})
    output.must_include "Jose Mota - Homepage (http://www.josemota.net/) was updated."
  end
end
