#!/usr/bin/env ruby1.9.1

require 'money'
require 'test/unit'

class TestMoney < MiniTest::Unit::TestCase
  def test_multiplication
    five = Money.dollar(5)
    assert_equal(Money.dollar(10), five.times(2))
    assert_equal(Money.dollar(15), five.times(3))
  end

  def test_equality
    assert(Money.dollar(5) == Money.dollar(5))
    refute(Money.dollar(5) == Money.dollar(6))
    refute(Money.dollar(5) == Money.franc(5))
  end

  def test_currency
    assert_equal(:USD, Money.dollar(1).currency)
    assert_equal(:CHF, Money.franc(1).currency)
  end

  def test_simple_addition
    five    = Money.dollar(5)
    sum     = five + five
    bank    = Bank.new
    reduced = bank.reduce(sum, :USD)
    assert_equal(Money.dollar(10), reduced)
  end
end
