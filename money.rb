class Money
  attr_reader :amount, :currency

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

  def reduce(to_currency)
    self
  end
end

class Bank
  def reduce(expression, to_currency)
    return expression.reduce(to_currency) if expression.class == Money
    sum = expression
    sum.reduce(to_currency)
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

  def reduce(to_currency)
    amount = @augend.amount + @addend.amount
    Money.new(amount, to_currency)
  end
end
