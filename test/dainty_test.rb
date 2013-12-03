require 'minitest_helper'

class TestDainty < MiniTest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Dainty::VERSION
  end

  test "it works" do
    assert true
  end

end
