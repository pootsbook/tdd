class Money
  protected
  attr_reader :amount

  public
  attr_reader :currency

  def initialize(amount, currency)
    @amount   = amount
    @currency = currency
  end

  def self.dollar(amount)
    Money.new(amount, :USD)
  end

  def self.franc(amount)
    Money.new(amount, :CHF)
  end

  def ==(other)
    @amount == other.amount &&
      @currency == other.currency
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  def +(other)
    Sum.new(self, other)
  end
end

class Bank
  def reduce(expression, to_currency)
    Money.dollar(10)
  end
end

class Expression
end

class Sum
  attr_reader :augend, :addend

  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end
end
