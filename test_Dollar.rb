#!/usr/bin/env ruby1.9.1

require 'dollar'
require 'test/unit'

class TestDollar < MiniTest::Unit::TestCase
  def test_multiplication
    five = Money.dollar(5)
    assert_equal(Money.dollar(10), five.times(2))
    assert_equal(Money.dollar(15), five.times(3))
  end

  def test_equality
    assert(Money.dollar(5) == Money.dollar(5))
    refute(Money.dollar(5) == Money.dollar(6))
  end
end
