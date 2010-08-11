#!/usr/bin/env ruby1.9.1

require 'money'
require 'test/unit'

class TestMoney < MiniTest::Unit::TestCase
  def test_equality
    refute(Money.dollar(5) == Money.franc(5))
  end
end
