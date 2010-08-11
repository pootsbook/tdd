class Money
  attr_reader :currency

  def self.dollar(amount)
    Dollar.new(amount)
  end

  def self.franc(amount)
    Franc.new(amount)
  end

  def ==(other)
    self.class == other.class &&
      @amount == other.amount
  end

  protected
  attr_reader :amount
end

class Dollar < Money
  def initialize(amount)
    @amount   = amount
    @currency = :USD
  end

  def times(multiplier)
    Dollar.new(@amount * multiplier)
  end

  def currency
    @currency
  end
end

class Franc < Money
  def initialize(amount)
    @amount   = amount
    @currency = :CHF
  end

  def times(multiplier)
    Franc.new(@amount * multiplier)
  end

  def currency
    @currency
  end
end
