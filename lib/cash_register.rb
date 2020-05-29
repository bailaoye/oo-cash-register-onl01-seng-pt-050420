class CashRegister
  attr_accessor :total
  def initialize(total = 0)
    @total = total
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, optional)
    @total += price
  end

end
