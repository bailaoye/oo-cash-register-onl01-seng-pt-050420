class CashRegister
  attr_accessor :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount = 20
  end

  def add_item(item, price, quantity = 1)
    @items << item
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @discount = @discount/100.to_f
      @total -= @total * @discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end
end
