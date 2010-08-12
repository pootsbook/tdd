#!/usr/bin/env ruby1.9.1

require 'money'
require 'test/unit'

class TestFranc < MiniTest::Unit::TestCase
  def test_multiplication
    five = Money.franc(5)
    assert_equal(Money.franc(10), five.times(2))
    assert_equal(Money.franc(15), five.times(3))
  end
end
