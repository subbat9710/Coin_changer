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
    def test_7_cents_returns_1_nickel_2_pennies_hash
    	assert_equal({:nickel => 1, :penny => 2}, make_change(7)) #expecting nickel for 5 cents.
    end
    def test_9_cents_returns_1_nickel_4_pennies_hash
    	assert_equal({:nickel => 1, :penny => 4}, make_change(9)) #expecting nickel for 5 cents.
    end
    def test_10_cents_returns_1_dime_hash
    	assert_equal({:dime => 1}, make_change(10)) #expecting dime for 10 cents.
    end
    def test_19_cents_returns_1_dime_1_nickel_4_pennies_hash
    	assert_equal({:dime => 1, :nickel => 1, :penny => 4}, make_change(19)) #expecting 1dime,1nickel & 4pennies for 19 cents.
    end
end