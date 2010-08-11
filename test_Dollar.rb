#!/usr/bin/env ruby1.9.1

require 'dollar'
require 'test/unit'

class TestDollar < MiniTest::Unit::TestCase
  def test_multiplication
    five = Dollar.new(5)
    assert_equal(Dollar.new(10), five.times(2))
    assert_equal(Dollar.new(15), five.times(3))
  end

  def test_equality
    assert(Dollar.new(5) == Dollar.new(5))
    refute(Dollar.new(5) == Dollar.new(6))
  end
end
