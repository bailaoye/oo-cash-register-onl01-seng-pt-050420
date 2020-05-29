class CashRegister
  attr_accessor :total
  def initialize(total = 0)
    @total = total
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total -= @total * (@discount * (0.01))
  end
end
