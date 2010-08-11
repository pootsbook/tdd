#!/usr/bin/env ruby1.9

require 'dollar'
require 'test/unit'

class TestDollar < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    product = five.times(2)
    assert_equal(10, product.amount)
    product = five.times(3)
    assert_equal(15, product.amount)
  end
end
