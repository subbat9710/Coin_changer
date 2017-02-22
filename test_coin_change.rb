require "minitest/autorun"
require_relative "coin_chnger.rb"

class TestCoinChanger < Minitest::Test

    def test_0_cent_returns_empty_hash  
	    assert_equal({}, make_change(0)) #it pass 0 in the empty hash
    end
    def test_1_cent_returns_penny_hash
        assert_equal({:penny => 1}, make_change(1)) #expecting :penny hash for 1 cent.
    end
    def test_2_cents_returns_2_penny_hash
    	assert_equal({:penny => 2}, make_change(2)) #expecting 2 pennies in this test.
    end
    def test_5_cents_returns_1_nickel_hash
    	assert_equal({:nickel => 1}, make_change(5)) #expecting nickel for 5 cents.
    end
    def test_6_cents_returns_1_nickel_1_penny_hash
    	assert_equal({:nickel => 1, :penny => 1}, make_change(6)) #expecting 1 nickel and 1 penny for 6 cents.
    end
end