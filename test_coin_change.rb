require "minitest/autorun"
require_relative "coin_chnger.rb"

class TestCoinChanger < Minitest::Test

    def test_0_cent_return_empty_hash
	    assert_equal({}, make_change(0))
    end
end