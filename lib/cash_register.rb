class CashRegister
  attr_accessor :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @discount = @discount/100.to_f
    @total -= @total * @discount
  end
end
