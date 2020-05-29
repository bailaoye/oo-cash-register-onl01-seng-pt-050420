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
    if @discount > 0
      @discount = @discount/100.to_f
      puts "After the discount, the total comes to $#{@total -= @total * @discount}."
    else
      puts "There is no discount to apply."
  end
end
