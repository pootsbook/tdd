class Money
  def self.dollar(amount)
    Dollar.new(amount)
  end

  def ==(other)
    self.class == other.class &&
      @amount == other.amount
  end

  protected
  attr_reader :amount
end
