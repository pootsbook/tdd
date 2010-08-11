#!/usr/bin/env ruby1.9.1

require 'franc'
require 'test/unit'

class TestFranc < MiniTest::Unit::TestCase
  def test_multiplication
    five = Franc.new(5)
    assert_equal(Franc.new(10), five.times(2))
    assert_equal(Franc.new(15), five.times(3))
  end

  def test_equality
    assert(Franc.new(5) == Franc.new(5))
    refute(Franc.new(5) == Franc.new(6))
  end
end
