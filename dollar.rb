require 'money'

class Dollar < Money
  def initialize(amount)
    @amount = amount
  end

  def ==(other)
    @amount == other.amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end

  protected
  attr_reader :amount
end
