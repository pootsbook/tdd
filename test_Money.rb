#!/usr/bin/env ruby1.9.1

require 'money'
require 'test/unit'

class TestMoney < MiniTest::Unit::TestCase
  def test_equality
    refute(Money.dollar(5) == Money.franc(5))
  end

  def test_currency
    assert_equal(:USD, Money.dollar(1).currency)
    assert_equal(:CHF, Money.franc(1).currency)
  end
end
