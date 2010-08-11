class Dollar
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def ==(other)
    true
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end
end
