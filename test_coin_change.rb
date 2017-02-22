require "minitest/autorun"
require_relative "coin_chnger.rb"

class TestCoinChanger < Minitest::Test

    def test_0_cent_returns_empty_hash
	    assert_equal({}, make_change(0))
    end
    def test_1_cent_returns_penny_hash
        assert_equal({:penny => 1}, make_change(1)) 
    end
end