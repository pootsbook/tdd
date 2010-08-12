class Money
  attr_reader :currency

  def initialize(amount, currency)
    @amount   = amount
    @currency = currency
  end

  def self.dollar(amount)
    Dollar.new(amount, :USD)
  end

  def self.franc(amount)
    Franc.new(amount, :CHF)
  end

  def ==(other)
    self.class == other.class &&
      @amount == other.amount
  end

  def currency
    @currency
  end

  protected
  attr_reader :amount
end

class Dollar < Money
  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end
end

class Franc < Money
  def initialize(amount, currency)
    super
  end

  def times(multiplier)
    Money.new(@amount * multiplier, @currency)
  end
end
