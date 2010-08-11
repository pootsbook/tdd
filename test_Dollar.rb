#!/usr/bin/env ruby1.9

require 'dollar'
require 'test/unit'

class TestDollar < Test::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    five.times(2)
    assert_equal(10, five.amount)
  end
end
