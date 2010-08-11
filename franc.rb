require 'money'

class Franc < Money
  def initialize(amount)
    @amount = amount
  end

  def ==(other)
    @amount == other.amount
  end

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end

  protected
  attr_reader :amount
end
