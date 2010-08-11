#!/usr/bin/env ruby1.9.1

require 'dollar'
require 'franc'
require 'test/unit'

class TestMoney < MiniTest::Unit::TestCase
  def test_equality
    refute(Dollar.new(5) == Franc.new(5))
  end
end
