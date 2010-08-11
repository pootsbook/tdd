class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def ==(other)
    @amount == other.amount
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end
end
