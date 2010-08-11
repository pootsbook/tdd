class Money
  def ==(other)
    self.class == other.class &&
      @amount == other.amount
  end

  protected
  attr_reader :amount
end
